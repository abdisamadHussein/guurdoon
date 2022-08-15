using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using Guryosamo.utils;
using System.Globalization;


namespace Guryosamo.Acount
{
    public partial class Payment : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        DataTable dt;
        SqlDataAdapter da;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
              if (method.SelectedItem.Text == "Bankiga")
              {
                  
                    serviceB.Enabled = true;
                    RequiredFieldValidatorM.Enabled = false;
                    serviceM.Visible = false;
                    serviceB.Visible = true;
                    RequiredFieldValidatorB.Enabled = true;
                    refrence.Enabled = true;
                    tel.InnerText = "Lambarka Akoonka";
                    tel.Attributes.Add("placeholder", "Gali Lambarka Akoonka");

                }
              else if(method.SelectedItem.Text == "Taleefonka")
              {
                    serviceB.Visible = false;
                    RequiredFieldValidatorB.Enabled = false;
                    serviceM.Visible = true;
                    serviceM.Enabled = true;
                    RequiredFieldValidatorM.Enabled = true;
                    refrence.Enabled = true;
                    tel.InnerText = "Lambarka Teleefonka";
                    tel.Attributes.Add("placeholder", "Gali Lambarka Teleefonka");

                }
                else if(method.SelectedItem.Text == "Dooro  Habka")
                {
                    serviceB.Visible = false;
                    serviceM.Visible = true;
                    serviceM.Enabled = false;
                    refrence.Enabled = false;


                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                var email = (String)Session["email"];
                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    cmd = new SqlCommand("SELECT [_id] FROM Users WHERE email_address= '" + email + "'", con);
                    var id = Convert.ToInt32(cmd.ExecuteScalar());

                    if (method.SelectedItem.Text == "Bankiga")
                    {
                        cmd = new SqlCommand("UPDATE  s SET s.paid = 'false'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u._id = '" + id + "'", con);
                        cmd.ExecuteNonQuery();
                        cmd = new SqlCommand("INSERT INTO Payments(user_id,method,service,pay_no,pay_date)VALUES('" + id + "','" + method.SelectedItem.Text + "','" + serviceB.SelectedItem.Text + "','"+refrence.Text+"','"+DateTime.Now+"')", con);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("./Profile.aspx");
                    }
                    else if (method.SelectedItem.Text == "Taleefonka")
                    {
                        cmd = new SqlCommand("UPDATE  s SET s.paid = 'false'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u._id = '" + id + "'", con);
                        cmd.ExecuteNonQuery();
                        cmd = new SqlCommand("INSERT INTO Payments(user_id,method,service,pay_no,pay_date)VALUES('" + id + "','" + method.SelectedItem.Text + "','" + serviceM.SelectedItem.Text + "','" + refrence.Text + "','" + DateTime.Now+ "')", con);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("./Profile.aspx");
                    }

                    
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}