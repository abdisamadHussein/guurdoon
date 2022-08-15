using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;


namespace Guryosamo.Adminstraation
{
    public partial class Raga : System.Web.UI.Page
    {
        String constr = ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
       System.Data. DataTable dt = new System.Data.DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
              Getdate();
            
          
        }
        private void Getdate()
        {
           con = new SqlConnection(constr);
           if (con.State == ConnectionState.Closed)
                con.Open();
            //result.InnerText = "connected";
            cmd =new SqlCommand("select (first_name+' '+midlle_name+' '+last_name) as full_name,email_address,phone from UsersAcount where gender='Lab'", con);
           // cmd = new SqlCommand("SELECT UsersAcount.first_name, UsersAcount.midlle_name, IsPending.Pending FROM  UsersAcount INNER JOIN IsPending ON UsersAcount._id = IsPending.user_id where IsPending.Pending='true'", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //adapter.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }

    }
}