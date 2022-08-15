using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Guryosamo.Auth
{
    public partial class ChangePassword : System.Web.UI.Page
    {

        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        string emailaddress;
        protected void Page_Load(object sender, EventArgs e)
        {
            emailaddress = Request.QueryString["email"];
            var date = DateTime.Now.ToString("MM/dd/yyyy");
            using (con = new SqlConnection(constr))
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();

                try
                {
                    cmd = new SqlCommand("UPDATE emailcon SET expridtime ='" + date + "' WHERE email= '" + emailaddress + "'", con);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("select * from emailcon where startdate='" + date + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == false)
                    {

                        Password.Visible = false;
                        ConfirmPassword.Visible = false;
                        Button1.Visible = false;
                        Changepas.InnerText = "linkigaan halmar kabadan lama isticmaalikaro";
                    }
                   
                    dr.Close();




                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }


            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();

                try
                {
                    cmd = new SqlCommand("DELETE FROM emailcon WHERE email= '" + emailaddress + "'", con);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("SELECT * FROM Users WHERE   email_address= '" + emailaddress + "'", con);
                    dr = cmd.ExecuteReader();




                    if (dr.Read() == true)
                    {

                     //   dr.Close();
                        cmd = new SqlCommand("usp_Users", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = emailaddress;
                        cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = Password.Text;
                        cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Update";
                        cmd.ExecuteNonQuery();
                        cmd = new SqlCommand("DELETE FROM emailcon WHERE email= '" + emailaddress + "'", con);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("./SignIn.aspx");
                    }

                    else
                    {
                        dr.Close();
                        cmd = new SqlCommand("usp_Addmin", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = emailaddress;
                        cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = Password.Text;
                        cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Update";
                        cmd.ExecuteNonQuery();
                        cmd = new SqlCommand("DELETE FROM emailcon WHERE email= '" + emailaddress + "'", con);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("./SignIn.aspx");
                    }




                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }


            }
        }
    }
}