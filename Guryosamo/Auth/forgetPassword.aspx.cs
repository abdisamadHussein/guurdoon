using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Guryosamo.Auth
{
    public partial class forgetPassword : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string emailaddress;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(constr);
                if (con.State == ConnectionState.Closed)
                    con.Open();
                cmd = new SqlCommand("SELECT * FROM [Guryosamo].[dbo].[Users] WHERE   [email_address]= '" + email.Text + "'", con);
                dr = cmd.ExecuteReader();


                if (dr.Read() == true)
                {

                    String verified = dr["verified"].ToString();
                    if (verified == "true")
                    {

                        dr.Close();

                        var date = DateTime.Now.ToString("MM/dd/yyyy"); 
                        cmd = new SqlCommand("insert into emailcon (email,startdate) values('" + email.Text + "','" +date+ "')", con);
                        cmd.ExecuteNonQuery();

                        sendEmail(email.Text);
                        
                     
                    }
                    else
                    {
                        result.InnerText = "you are not verified please veify your email address.";
                    }




                }
                else
                {
                    dr.Close();
                    cmd = new SqlCommand("SELECT * FROM [Guryosamo].[dbo].[AdminAcount] WHERE [email_address]= '" + email.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {

                        sendEmail(email.Text);
                        

                    }
                    

                    result.InnerText = "Invalid email address.";
                    email.Text = "";
                    email.CssClass += "form-control is-invalid";
                    email.Focus();

                }
              

            }
            catch (Exception ex)
            {
                result.InnerText = ex.Message;
            }
        }

        protected void sendEmail(string emilAddress)
        {
            using (SmtpClient smtpClient = new SmtpClient())
            {
                var basicCredential = new NetworkCredential("aruj877@gmail.com", "%Baba^Aruj.2");
                using (MailMessage message = new MailMessage())
                {
                    MailAddress fromAddress = new MailAddress("aruj877@gmail.com");

                    smtpClient.Host = "smtp.gmail.com";
                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Credentials = basicCredential;
                    smtpClient.EnableSsl = true;

                    message.From = fromAddress;
                    message.Subject = "Guryosamo Forget Password.";
                    // Set IsBodyHtml to true means you can send HTML email.
                    message.IsBodyHtml = true;
                    message.Body += "<br /><br />Please click the following link to activate your account";

                    message.Body += "<br /><a href = 'http://localhost:49532/Auth/ChangePassword.aspx?email=" + email.Text + "'>Click here to activate your account.</a>";
                    //message.Body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("CS.aspx", "http://localhost:49532/Auth/verification.aspx?email=" + email.Text) + "'>Click here to activate your account.</a>";
                    message.Body += "<br /><br />Thanks";
                    message.To.Add(emilAddress);
                    

                    try
                    {
                        smtpClient.Send(message);

                        
                        Response.Redirect("./vaerify.aspx");
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
                       
                    }
                    catch (Exception ex)
                    {
                        //Error, could not send the message
                        Response.Write(ex.Message);
                    }
                }
                

            }
        }
    }
}