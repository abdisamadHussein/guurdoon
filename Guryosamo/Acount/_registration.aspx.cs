using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace Guryosamo.Acount
{
    public partial class registration : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String email;
        int Id;
        string gender;
        string registred;


        protected void Page_Load(object sender, EventArgs e)
        {
            work_form.Visible = false;
            male_form.Visible = false;
            female_form.Visible = false;

            email = (String)Session["email"];
            if (email == null)
            {
                Response.Redirect(".././Auth/SignIn.aspx");
            }

            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("SELECT * FROM Users WHERE email_address= '" + email + "'", con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    gender = dr["gender"].ToString();
                    Id = Convert.ToInt32(dr["_id"].ToString());

                }

            }
            if (gender == "Lab")
            {
                male_form.Visible = true;
            }
            else
            {
                female_form.Visible = true;
            }

            if (IsPostBack)
            {
                if(f_work.SelectedValue == "1")
                {
                    work_form.Visible = true;
                }
                else
                {
                    work_form.Visible = false;
                }
            }
            
        }
    }
}
