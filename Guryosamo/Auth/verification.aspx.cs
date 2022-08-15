using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;

namespace Guryosamo.Auth
{
    public partial class verification : System.Web.UI.Page
    {

        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        int Id;

        string verifiedEmail;
        protected void Page_Load(object sender, EventArgs e)
        {
            verifiedEmail = Request.QueryString["email"];
            using (con = new SqlConnection(constr))
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();

                try
                {
                    cmd = new SqlCommand("SELECT  * FROM Users WHERE email_address = '" + verifiedEmail + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                        Id = Convert.ToInt32(dr["_id"].ToString());
                        if (dr["verified"].ToString() == "true")
                        {
                            Response.Redirect("./SignIn.aspx");
                        }
                        first_name.Text = dr["first_name"].ToString();
                        middle_name.Text = dr["midlle_name"].ToString();
                        last_name.Text = dr["last_name"].ToString();
                        gender.Text = dr["gender"].ToString();
                        email.Text = dr["email_address"].ToString();
                        tellefonka.Text = dr["phone"].ToString();
                    }
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
                    cmd = new SqlCommand("usp_Users", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = verifiedEmail;
                    cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password.Text;
                    cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Update"; 
                    cmd.ExecuteNonQuery();

                    cmd = new SqlCommand("usp_Users", con);
                    Response.Redirect("./SignIn.aspx");


                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }

        }
       


    }
}