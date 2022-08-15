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
    public partial class UserInfoSetting : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        DataTable dt;
        String email;
        int Id;


        protected void Page_Load(object sender, EventArgs e)
        {
            m_material_status.Visible = false;
            w_material_status.Visible = false;
            //m_height.Visible=false;
            //w_height.Visible =false;
            email = (String)Session["email"];
            if (email == null)
            {
                Response.Redirect(".././Auth/SignIn.aspx");
            }
            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("SELECT  * FROM Users WHERE email_address = '" + email + "'", con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Session["username"] = dr["first_name"].ToString(); ;
                    //profile_info_name.InnerText = dr["first_name"].ToString() + " " + dr["midlle_name"].ToString() + " " + dr["last_name"].ToString(); ;
                    //profile_info_email.InnerText = dr["email_address"].ToString(); ;
                    //profile_info_tellefonka.InnerText = dr["phone"].ToString(); ;
                    //if (choosen_age.SelectedItem.Text== dr["age_range"].ToString())

                    //choosen_age.SelectedItem.Text = dr["age_range"].ToString(); ;



                    //choosen_material_status.Value= dr["mariage_status"].ToString(); ;
                    //choosen_location.Text= dr["adress_town"].ToString(); ;
                    //choosen_education_level.Value= dr["education_level"].ToString() ; ;
                    //choosen_workplace.Text= dr["work_place"].ToString(); ;
                    //choosen_title.Text= dr["job_title"].ToString(); ;
                    //choosen_height.Value= dr["height"].ToString(); ;
                    //choosen_weight.Value= dr["weight"].ToString(); ;
                    //choosen_color.Value= dr["skin_color"].ToString(); ;
                    //choosen_cooking.Value= dr["cooking"].ToString(); ;


                    //Session["gender"] = dr["gender"].ToString();
                    dr.Close();
                    cmd = new SqlCommand("SELECT [_id] FROM Users WHERE email_address= '" + email + "'", con);
                    Id = Convert.ToInt32(cmd.ExecuteScalar());
                    cmd = new SqlCommand("SELECT registred, paid FROM Status S INNER JOIN  Users U ON S.user_id = " + Id + "", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                        if ((String)Session["gender"] == "Lab")

                        {
                            dr.Close();
                            cmd = new SqlCommand("SELECT mi.age_range, mi.education_level, mi.mariage_status, mi.adress_town, mi.work_place, mi.job_title, mi.height, mi.weight,  mi.skin_color FROM   Users  u INNER JOIN MaleInformation mi ON u._id = mi.user_id WHERE u.email_address = '" + email + "'", con);
                            dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {

                                choosen_age.Items.FindByText(dr["age_range"].ToString()).Selected = true;

                                m_material_status.Visible = true;
                                m_material_status.Items.FindByText(dr["mariage_status"].ToString()).Selected = true;

                                choosen_location.Text = (dr["adress_town"].ToString());
                                choosen_education_level.Items.FindByText(dr["education_level"].ToString()).Selected = true;
                                choosen_workplace.Text = (dr["work_place"].ToString());
                                choosen_title.Text = (dr["job_title"].ToString());
                                choosen_height.Items.FindByText(dr["height"].ToString()).Selected = true;
                                choosen_weight.Items.FindByText(dr["weight"].ToString()).Selected = true;
                                choosen_color.Items.FindByText(dr["skin_color"].ToString()).Selected = true;
                            }
                            dr.Close();
                        }
                        else
                        {
                            dr.Close();
                            cmd = new SqlCommand(" SELECT fi.age_range, fi.education_level, fi.mariage_status, fi.adress_town, fi.work_place, fi.job_title, fi.height, fi.weight,  fi.skin_color FROM   Users  u INNER JOIN FemaleInformation fi ON u._id = fi.user_id  WHERE u.email_address = '" + email + "'", con);
                            dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {

                                choosen_age.Items.FindByText(dr["age_range"].ToString()).Selected = true;

                                w_material_status.Visible = true;
                                w_material_status.Items.FindByText(dr["mariage_status"].ToString()).Selected = true;

                                choosen_location.Text = (dr["adress_town"].ToString());
                                choosen_education_level.Items.FindByText(dr["education_level"].ToString()).Selected = true;
                                choosen_workplace.Text = (dr["work_place"].ToString());
                                choosen_title.Text = (dr["job_title"].ToString());
                                choosen_height.Items.FindByText(dr["height"].ToString()).Selected = true;
                                choosen_weight.Items.FindByText(dr["weight"].ToString()).Selected = true;
                                choosen_color.Items.FindByText(dr["skin_color"].ToString()).Selected = true;




                            }
                            dr.Close();

                        }

                    }










                }
            }
        }
    }
}