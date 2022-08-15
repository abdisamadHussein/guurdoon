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
    public partial class Setting : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        DataTable dt;
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {
            m_material_status.Visible = false;
            w_material_status.Visible = false;

            email = (String)Session["email"];
            if (!IsPostBack)
            {
                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    cmd = new SqlCommand("SELECT  * FROM Users WHERE email_address = '" + email + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        var genderdb = dr["gender"].ToString();
                        if (genderdb == "Lab")
                        {
                            m_material_status.Visible = true;
                            fullname.Text = string.Format("{0} {1} {2}", dr["first_name"].ToString(), dr["midlle_name"].ToString(), dr["last_name"].ToString());
                            emailaddress.Text = (dr["email_address"].ToString());
                            phone.Text = (dr["phone"].ToString());
                            gender.Items.FindByText(dr["gender"].ToString()).Selected = true;

                            dr.Close();
                            cmd = new SqlCommand("SELECT mi.age_range, mi.education_level, mi.mariage_status, mi.adress_town, mi.work_place, mi.job_title, mi.height, mi.weight,  mi.skin_color FROM   Users  u INNER JOIN MaleInformation mi ON u._id = mi.user_id WHERE u.email_address = '" + email + "'", con);
                            dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                age.Items.FindByText(dr["age_range"].ToString()).Selected = true;

                                m_material_status.Items.FindByText(dr["mariage_status"].ToString()).Selected = true;

                                //choosen_location.Text = (dr["adress_town"].ToString());
                                var kkm = dr["height"].ToString();
                                education_level.Items.FindByText(dr["education_level"].ToString()).Selected = true;
                                choosen_workplace.Text = (dr["work_place"].ToString());
                                choosen_title.Text = (dr["job_title"].ToString());
                                height.Items.FindByText(dr["height"].ToString()).Selected = true;
                                weight.Items.FindByText(dr["weight"].ToString()).Selected = true;
                                choosen_color.Items.FindByText(dr["skin_color"].ToString()).Selected = true;

                            }
                        }
                        else
                        {
                            w_material_status.Visible = true;
                            fullname.Text = string.Format("{0} {1} {2}", dr["first_name"].ToString(), dr["midlle_name"].ToString(), dr["last_name"].ToString());
                            emailaddress.Text = (dr["email_address"].ToString());
                            phone.Text = (dr["phone"].ToString());
                            gender.Items.FindByText(dr["gender"].ToString()).Selected = true;

                        }

                    }
                }
            }
           
        }

        protected void UpdateC_Click(object sender, EventArgs e)
        {

        }
    }
}