using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Guryosamo.Adminstraation
{
    public partial class Adminstration : System.Web.UI.MasterPage
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        SqlDataAdapter da;

        String user;
        int allpending;



        protected void Page_Load(object sender, EventArgs e)
        {

            notification.Visible = false;
            user = (String)Session["username"];
         

            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("SELECT COUNT(*) FROM  Users U INNER JOIN Status I ON U._id = I.user_id where I.paid = 'false'  OR I.paid= 'wait'", con);

                allpending = Convert.ToInt32(cmd.ExecuteScalar());
                Session["allpending"] = allpending;

            }

            if (user == null)
            {
                Response.Redirect(".././Auth/SignIn.aspx");
            }
            username.InnerText = user;
            if (allpending > 0)
            {
                notification.Visible = true;
                notification.InnerText = allpending.ToString();

            }
           
         

        }
    }
}