using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Net.Sockets;
using System.IO;


namespace Guryosamo.Auth
{

    public partial class SignUp : System.Web.UI.Page
    {

        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        Boolean isvalid = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            using (con = new SqlConnection(constr))
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                try
                {
                    cmd = new SqlCommand("select * from  Users where email_address='" + email.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        isvalid = true;
                        return;
                    }
                    else
                    {
                        dr.Close();
                        cmd = new SqlCommand("usp_Users", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@first_name", SqlDbType.VarChar).Value = first_name.Text;
                        cmd.Parameters.AddWithValue("@midlle_name", SqlDbType.VarChar).Value = middle_name.Text;
                        cmd.Parameters.AddWithValue("@last_name", SqlDbType.VarChar).Value = last_name.Text;
                        cmd.Parameters.AddWithValue("@gender", SqlDbType.VarChar).Value = gender.SelectedItem.Text;
                        cmd.Parameters.AddWithValue("@phone", SqlDbType.VarChar).Value = tellefonka.Text;
                        cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = email.Text;
                        cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Insert";
                       
                        Email(email.Text);
                        cmd.ExecuteNonQuery();
                        //clear();
                        Response.Redirect("./verify.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        //protected void clear()
        //{
        //    first_name.Text = "";
        //    middle_name.Text = "";
        //    last_name.Text = "";
        //    tellefonka.Text = "";
        //    email.Text = "";


        //}
        static void Email(string toEmail)
        {
            string fromMail = "aruj877@gmail.com";
            string fromPassword = "vqxamoexrstkbubi";

            MailMessage message = new MailMessage();
            message.From = new MailAddress(fromMail);
            message.Subject = "Akoon Hubinta Guryosamo";
            message.To.Add(new MailAddress(toEmail));
            message.Body += "<br /><br /> Si aad u dhameystirto fadlan guji(Riix) linkiga hoose";
            message.Body += "<br /><a href = 'http://ns3.guurdoon.so:84/Auth/verification.aspx?email=" +toEmail + "'>Guji(riix) si aad u dhameystirto.</a>";
            message.Body += "<br /><br />MAHADSANID";
            message.IsBodyHtml = true;

            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPassword),
                EnableSsl = true,
            };

            smtpClient.Send(message);
        }
        private byte[] BytesFromString(string str)
        {
            return Encoding.ASCII.GetBytes(str);
        }

        private int GetResponseCode(string ResponseString)
        {
            return int.Parse(ResponseString.Substring(0, 3));
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = isvalid;
        }
    }
}