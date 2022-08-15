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
    public partial class blockuser : System.Web.UI.Page
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
                    cmd = new SqlCommand("select * from  blockstatus where email='" + email.Text + "' and isblocked='" + true + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                        RESET.InnerText = email.Text + " Ciwaan kan Horey ayaa looxiray";
                       

                    }
                    else
                    {
                        dr.Close();
                        cmd = new SqlCommand("SELECT * FROM Users WHERE   email_address= '" + email.Text + "'", con);
                        dr = cmd.ExecuteReader();

                        if (dr.Read() == true)
                        {

                            dr.Close();
                            cmd = new SqlCommand("insert into  blockstatus (email) values('" + email.Text + "')", con);
                            cmd.ExecuteNonQuery();
                            cmd = new SqlCommand("UPDATE blockstatus SET isblocked ='" + true + "' WHERE email= '" + email.Text + "'", con);
                            cmd.ExecuteNonQuery();
                            RESET.InnerText = "Email kan " + email.Text + " waa laxiray";

                        }

                        else
                        {
                            dr.Close();
                            cmd = new SqlCommand("SELECT * FROM Addmin WHERE   email_address= '" + email.Text + "'", con);
                            dr = cmd.ExecuteReader();

                            if (dr.Read() == true)
                            {


                                cmd = new SqlCommand("insert into  blockstatus (email) values('" + email.Text + "')", con);
                                cmd.ExecuteNonQuery();
                                cmd = new SqlCommand("UPDATE blockstatus SET isblocked ='" + true + "' WHERE email= '" + email.Text + "'", con);
                                cmd.ExecuteNonQuery();
                                RESET.InnerText = "Email kan " + email.Text + " waa laxiray";
                            }
                            else
                            {
                                RESET.InnerText = "Email kaan mahan mid jira";
                            }


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