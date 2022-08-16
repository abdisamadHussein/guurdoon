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



namespace Guryosamo.Auth
{
    public partial class SignIn : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {


            year.InnerText = DateTime.Parse(DateTime.Now.ToString("MM/dd/yyyy")).Year.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (email.Text == "")
            {
                email.CssClass += "form-control is-invalid";
                return;
            }
            if (password.Text == "")
            {
                password.CssClass += "form-control is-invalid";
                return;
            }

            email.CssClass = "form-control is-valid";
            password.CssClass = "form-control is-valid";
            using (con = new SqlConnection(constr))
            {
                con.Open();
                try
                {

                    cmd = new SqlCommand("select * from  blockstatus where email='" + email.Text + "' and isblocked='" + true + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {

                        result.InnerText = "ciwaankan waa laxiray fadlan laxariir Qeybta Mamulka";


                    }
                    else
                    {
                        dr.Close();
                        result.InnerText = "connected";


                        cmd = new SqlCommand("usp_Users", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = email.Text;
                        cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password.Text;
                        cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Auth";

                        dr = cmd.ExecuteReader();


                        if (dr.Read() == true)
                        {
                            String verified = dr["verified"].ToString();
                            if (verified == "true")
                            {
                                Session["email"] = dr["email_address"].ToString();
                                dr.Close();
                                Response.Redirect("~/Acount/Profile.aspx");
                            }
                            else
                            {
                                result.InnerText = "you are not verified please veify your email address.";
                            }




                        }
                        else
                        {
                            dr.Close();
                            cmd = new SqlCommand("usp_Addmin", con);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = email.Text;
                            cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password.Text;
                            cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Auth";
                            dr = cmd.ExecuteReader();
                            if (dr.Read() == true)
                            {
                                Session["username"] = dr["username"].ToString();
                                Response.Redirect("~/Adminstraation/Dashboard.aspx");
                            }

                            result.InnerText = "you are not verified please veify your email address.";
                            result.InnerText = "email or password are incorrect.";
                            email.Text = "";
                            email.CssClass += "form-control is-invalid";
                            password.CssClass = "form-control is-invalid";
                            email.Focus();

                        }

                    }

                }
                catch (Exception ex)
                {
                    result.InnerText = ex.Message;
                }
            }



        }
       
    }
}
