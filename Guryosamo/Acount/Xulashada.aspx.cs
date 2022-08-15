using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using Guryosamo.Models;

namespace Guryosamo.Acount
{
    public partial class Xulashada : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        SqlDataAdapter da;
        String email;
        List<object> avgAndIds = new List<object>();

     
       
        public List<CompMale> topThree = new List<CompMale>();


        protected void Page_Load(object sender, EventArgs e)
        {


            email = (String)Session["email"];
            Lab.Visible = false;
            Dhedig.Visible = false;

          
                if ((String)Session["gender"] == "Lab")
                {
                    Lab.Visible = true;
                }
                else
                {
                    Dhedig.Visible = true;
                }

        }

      

        protected void m_svae_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                
                con.Open();
                cmd = new SqlCommand("SELECT [_id] FROM Users WHERE email_address= '" + email + "'", con);
                var Id = Convert.ToInt32(cmd.ExecuteScalar());
               
                cmd = new SqlCommand("SearchFemale", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@age_range", SqlDbType.VarChar).Value = m_age.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@mariage_status", SqlDbType.VarChar).Value = m_mariageStatus.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@education_level", SqlDbType.VarChar).Value = m_educationLevel.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@height", SqlDbType.VarChar).Value = m_height.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@weight", SqlDbType.VarChar).Value = m_weight.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@skin_color", SqlDbType.VarChar).Value = m_color.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@cooking", SqlDbType.VarChar).Value = CookingOption();
                cmd.Parameters.AddWithValue("@does_she_work", SqlDbType.VarChar).Value = workOption();
                cmd.Parameters.AddWithValue("@user_male_id", SqlDbType.NVarChar).Value = Id;
                dr = cmd.ExecuteReader();
                
                if (dr.Read())
                {
                    MaleChoice maleChoice = new MaleChoice()
                    {
                        id = Id,
                        ageRange = m_age.SelectedItem.Text,
                        mariageStatus = m_mariageStatus.SelectedItem.Text,
                        education = m_educationLevel.SelectedItem.Text,
                        height = m_height.SelectedItem.Text,
                        weight = m_weight.SelectedItem.Text,
                        skinColor = m_color.SelectedItem.Text,
                        cooking = CookingOption(),
                        doesSheWork = workOption()                     
                    };
                   var ag =  dr["Average"].ToString();
                    Session["Avgr"] = dr["Average"].ToString();
                    dr.Close();

                    Session["maleChoice"] = maleChoice;
                    da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Session["data"] = dt;
                    Session["dr"] = dr;
                    Response.Redirect("./Profile.aspx");
                }
                else
                {
                    Session["notFound"] = "yes";
                   Response.Redirect("./Profile.aspx");
                }
               
            }
            
        }

        protected void W_save_Click(object sender, EventArgs e)
        {

            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("SELECT [_id] FROM Users WHERE email_address= '" + email + "'", con);
                var Id = Convert.ToInt32(cmd.ExecuteScalar());

                cmd = new SqlCommand("SearchMale", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@age_range", SqlDbType.VarChar).Value = w_age.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@mariage_status", SqlDbType.VarChar).Value = w_mariageStatus.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@education_level", SqlDbType.VarChar).Value = w_educationLevel.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@height", SqlDbType.VarChar).Value = w_height.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@weight", SqlDbType.VarChar).Value = w_weight.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@skin_color", SqlDbType.VarChar).Value = w_colorSkin.SelectedItem.Text;
                cmd.Parameters.AddWithValue("@homework_help", SqlDbType.VarChar).Value = homeHelp();
                cmd.Parameters.AddWithValue("@user_female_id", SqlDbType.NVarChar).Value = Id;

                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Session["data"] = dt;
                dr = cmd.ExecuteReader();
                Session["dr"] = dr;
                while (dr.Read())
                {

                    Session["Avgr"] = dr["Average"].ToString();
                    Femalehoice femalehoice = new Femalehoice()
                    {
                        id = Id,
                        ageRange = w_age.SelectedItem.Text,
                        mariageStatus = w_mariageStatus.SelectedItem.Text,
                        education = w_educationLevel.SelectedItem.Text,
                        height = w_height.SelectedItem.Text,
                        weight = w_weight.SelectedItem.Text,
                        skinColor = w_colorSkin.SelectedItem.Text,
                        homeworkkHelp = homeHelp()                     
                    };
                    Session["femalehoice"] = femalehoice;
                }
                Response.Redirect("./Profile.aspx");

            }

        }

        protected String homeHelp()
        {
            if (support1.Checked)
            {
                return support1label.InnerText;

            }
            else if (support2.Checked)
            {
                return support2label.InnerText;
            }
            else
            {
                return support3label.InnerText;
            }
        }
        protected String CookingOption()
        {
            if (high.Checked)
            {
               return highLabel.InnerText;

            }
            else if (moderate.Checked)
            {
                return moderateLabel.InnerText;
            }
            else
            {
                return lowLabel.InnerText;
            }
        }
        protected String workOption()
        {
            if (haa.Checked)
            {
                return haaLabel.InnerText;

            }
            else
            {
                return mayaLabel.InnerText;
            }
        }
    }
}