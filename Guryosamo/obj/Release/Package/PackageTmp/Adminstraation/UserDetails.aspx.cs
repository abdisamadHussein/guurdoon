using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace Guryosamo.Adminstraation
{
    public partial class UserDetails : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String email;
        int Allfemale;
        int allMale;
        int Allpending;
        int Allusers;
        int[] serias;
        protected void Page_Load(object sender, EventArgs e)
        {
            string datachart = "";
            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("select COUNT (*)  from  Users where gender = 'Lab'", con);
                allMale = Convert.ToInt32(cmd.ExecuteScalar());
                cmd = new SqlCommand("select COUNT(*)  from Users where gender = 'Dheddig'", con);
                Allfemale = Convert.ToInt32(cmd.ExecuteScalar());
                cmd = new SqlCommand("select COUNT(*)  from Users ", con);
                Allusers = Convert.ToInt32(cmd.ExecuteScalar());

                cmd = new SqlCommand(" select COUNT(*) from Users U inner join Status S  on S.user_id = U._id where S.paid = 'false'", con);
                Allpending = Convert.ToInt32(cmd.ExecuteScalar());
                All.InnerText = Allusers.ToString();
                    //serias = allMale;


                    datachart += "<script>";

                    datachart += "data = ["+allMale.ToString()+ "," + Allfemale.ToString() + "]";
               

                    datachart += "</script>";


                

                l.Text= datachart.ToString();

       
            }
            dhumarka.InnerText = Convert.ToString(Allfemale);
            ragga.InnerText = Convert.ToString(allMale);
          

        }
    }
}