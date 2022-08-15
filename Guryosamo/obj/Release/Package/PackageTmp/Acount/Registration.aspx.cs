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
    public partial class Registration : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        String email;
        int Id;
        string registred;


        protected void Page_Load(object sender, EventArgs e)
        {
            shaqada.Visible = false;
            Lab.Visible = false;
            Dhedig.Visible = false;
            fee.Visible = false;

            email = (String)Session["email"];
            if (email == null)
            {
                Response.Redirect(".././Auth/SignIn.aspx");
            }


            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("SELECT [_id] FROM Users WHERE email_address= '" + email + "'", con);
                Id = Convert.ToInt32(cmd.ExecuteScalar());
               
            }
            
           
           
            if ((String)Session["gender"] == "Lab")
            {
                Lab.Visible = true;
            }
            else
            {
                Dhedig.Visible = true;
            }
           

            if (IsPostBack)
            {
                if (RadioButtonList1.SelectedItem.Text == "Haa")
                {
                    shaqada.Visible = true;
                }
                else
                {
                    shaqada.Visible = false;
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void w_savae_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                con.Open();
                if (RadioButtonList1.SelectedItem.Text == "Haa")
                {
                    cmd = new SqlCommand("INSERT INTO FemaleInformation  VALUES ('" + Id + "','" + w_age.SelectedItem.Text + "' ,'" + W_height.SelectedItem.Text + "','" + w_weight.SelectedItem.Text + "','" + w_color.SelectedItem.Text + "' ,'" + w_material_status.SelectedItem.Text + "','" + w_loacation.Text + "','" + w_education_level.SelectedItem.Text + "','Haa', '" + w_workplace.Text + "','" + w_title.Text + "','" + cooking.SelectedItem + "','" + RadioButtonList3.SelectedItem.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("INSERT INTO Status (user_id,registred,registred_date, paid) VALUES ('" + Id + "','true','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'request')", con);
                    cmd.ExecuteNonQuery();
                    Session["pending"] = "ture";
                    Response.Redirect("./profile.aspx");
                    return;

                }
                cmd = new SqlCommand("INSERT INTO FemaleInformation  VALUES ('" + Id + "','" + w_age.SelectedItem.Text + "' ,'" + W_height.SelectedItem.Text + "','" + w_weight.SelectedItem.Text + "','" + w_color.SelectedItem.Text + "' ,'" + w_material_status.SelectedItem.Text + "','" + w_loacation.Text + "','" + w_education_level.SelectedItem.Text + "','Maya', 'Maya','Maya','" + cooking.SelectedItem + "','" + RadioButtonList3.SelectedItem.Text + "')", con);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("INSERT INTO Status (user_id,registred,registred_date,paid ) VALUES ('" + Id + "','true','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'request')", con);
                cmd.ExecuteNonQuery();
                Session["paid"] = "ture";
                Response.Redirect("./profile.aspx");

            }
        }

        protected void m_save_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO MaleInformation  VALUES ('" + Id + "','" + m_age.SelectedItem.Text + "' ,'" + m_height.SelectedItem + "','" + m_weight.SelectedItem + "','" + m_color.SelectedItem + "' ,'" + m_material_status.SelectedItem + "','" + m_location.Text + "','" + m_education_level.SelectedItem + "', '" + m_workplace.Text + "','" + m_title.Text + "','" + support.Text + "','" + RadioButtonList2.SelectedItem.Text + "')", con);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("INSERT INTO Status (user_id,registred,registred_date ,paid) VALUES ('" + Id + "','true','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'request')", con);
                cmd.ExecuteNonQuery();
                Session["paid"] = "ture";
                Response.Redirect("./Profile.aspx");

            }
        }

        protected void paid_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {

                con.Open();
                cmd = new SqlCommand("UPDATE Users SET registertion_fee = 'request'  WHERE _id = " + Id + "", con);
                cmd.ExecuteNonQuery();
                
               
                Response.Redirect(Request.RawUrl);
               
            }
        }
    }
}