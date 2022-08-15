using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Guryosamo.Adminstraation
{
    public partial class usermanage : System.Web.UI.Page
    {

        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();

                try
                {

                    cmd = new SqlCommand("SELECT * FROM Users WHERE   email_address= '" + email.Text + "'", con);
                    dr = cmd.ExecuteReader();

                    if (dr.Read() == true)
                    {

                        dr.Close();
                        cmd = new SqlCommand("usp_Users", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = email.Text;
                        cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = 1234;
                        cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Update";
                        cmd.ExecuteNonQuery();

                        RESET.InnerText = "passwordka waa la reset gareeyay waana 1234";

                    }

                    else 
                    {
                        dr.Close();
                        cmd = new SqlCommand("SELECT * FROM Addmin WHERE   email_address= '" + email.Text + "'", con);
                        dr = cmd.ExecuteReader();

                        if (dr.Read() == true)
                        {


                            cmd = new SqlCommand("usp_Addmin", con);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = email.Text;
                            cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = 1234;
                            cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Update";
                            cmd.ExecuteNonQuery();
                        }
                        else
                        {
                            RESET.InnerText = "Email kaan mhan mid jira";
                        }
                        

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