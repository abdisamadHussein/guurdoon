using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Web.Script.Serialization;
using System.Web.Services;
using Guryosamo.Models;

namespace Guryosamo.Webservices
{
    /// <summary>
    /// Summary description for reports
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class reports : System.Web.Services.WebService
    {

        [WebMethod]
        public void GetUsers()
        {
            string cs = ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
            List<User> Users = new List<User>();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetEUsers", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    User user = new User();
                    user.id = Convert.ToInt32(rdr["_id"]);
                    user.full_name = rdr["full_name"].ToString();
                    user.gender = rdr["gender"].ToString();
                    user.phone = rdr["phone"].ToString();
                    user.email = rdr["email_address"].ToString();
                    Users.Add(user);
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(Users));
        }
        [WebMethod]
        public void GetAllsuccess()
        {
            string cs = ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
            List<MatchSuccess> Users = new List<MatchSuccess>();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("GetAcceptPersons", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    MatchSuccess user = new MatchSuccess();
                    user.MaleFullName = rdr["male_full_name"].ToString();
                    user.Mphone = rdr["phone1"].ToString();
                    user.FemalFullName = rdr["female_full_name"].ToString();
                    user.Fphone = rdr["phone2"].ToString();
                    user.Result = rdr["result"].ToString();
                    user.Avg = rdr["average"].ToString();
                    user.date = rdr["date"].ToString();


                    Users.Add(user);
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(Users));
        }
    }
}
