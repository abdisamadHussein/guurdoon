using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using Guryosamo.Models;
using System.Web.Script.Serialization;


namespace Guryosamo.Webservices
{
    /// <summary>
    /// Summary description for PendingServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class PendingServices : System.Web.Services.WebService
    {

        [WebMethod]
        public void GetPendingUsers()
        {
          
            string cs = ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
            List<PendingUser> pendingUsers = new List<PendingUser>();
       
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetPendingUsers", con);
                cmd.CommandType = CommandType.StoredProcedure;

               
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    PendingUser pendingUser = new PendingUser();
                  
                    pendingUser.full_name = rdr["full_name"].ToString();
                    pendingUser.email_address = rdr["email_address"].ToString();
                    pendingUser.phone = rdr["phone"].ToString();
                    pendingUser.service = rdr["service"].ToString();
                    pendingUser.Sender_Detail = rdr["Sender_Detail"].ToString();
                    pendingUsers.Add(pendingUser);
                }
            }

           

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(pendingUsers));
        }
    }
}
