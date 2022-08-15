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
    public partial class unblock : System.Web.UI.Page
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

               
                    cmd = new SqlCommand("select * from  blockstatus where email='" + email.Text + "' and isblocked='" +true+ "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                    dr.Close();
                    cmd = new SqlCommand("UPDATE blockstatus SET isblocked ='" + false + "' WHERE email= '" + email.Text + "'", con);
                        cmd.ExecuteNonQuery();
                        RESET.InnerText = email.Text + " Ciwaan kan xayiradi walaga qaaday";
                        

                    }
                    else
                    {
                        
                            RESET.InnerText = "Ciwaankan Maxiyirna / Ama mhan mid jira";

                    }

                       

                    
                
               



            }

        }
    }
}