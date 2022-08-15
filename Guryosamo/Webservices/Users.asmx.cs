using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;
using Guryosamo.Models;
using System.Web.Script.Serialization;

namespace Guryosamo.Webservices
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        String constr = ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        [WebMethod]
        public void GetAllMaleUsers(int iDisplayLength, int iDisplayStart, int iSortCol_0,
            string sSortDir_0, string sSearch)
        {
            int displayLength = iDisplayLength;
            int displayStart = iDisplayStart;
            int sortCol = iSortCol_0;
            string sortDir = sSortDir_0;
            string search = sSearch;

            List<MaleInfo> listMaleUsers = new List<MaleInfo>();
            int filteredCount = 0;

            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT (u.first_name+' '+u.midlle_name +' '+u.last_name) as full_name, u.gender, mi.age_range, mi.mariage_status, u.phone, u.email_address, mi.adress_town FROM   Users u INNER JOIN MaleInformation mi ON u._id = mi.user_id WHERE u.gender = 'Lab'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    MaleInfo maleUser = new MaleInfo();
                    maleUser.fullName = rdr["full_name"].ToString();
                    maleUser.gender = rdr["gender"].ToString();
                    maleUser.age = rdr["age_range"].ToString();
                    maleUser.mariageStatus = rdr["mariage_status"].ToString();
                    maleUser.phone = rdr["phone"].ToString();
                    maleUser.email = rdr["email_address"].ToString();
                    maleUser.address = rdr["adress_town"].ToString();
                    listMaleUsers.Add(maleUser);
                }
            }
            var result = new
            {
            //    iTotalRecords = GetEmployeeTotalCount(),
            //    iTotalDisplayRecords = filteredCount,
                aaData = listMaleUsers
            };

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(result));
        }

        //private int GetEmployeeTotalCount()
        //{
        //    int totalEmployeeCount = 0;

        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        SqlCommand cmd = new
        //            SqlCommand("SELECT COUNT (*) FROM   dbo.UsersAcount INNER JOIN dbo.information ON dbo.UsersAcount._id = dbo.information.user_id WHERE dbo.UsersAcount.gender = 'Lab'", con);
        //        con.Open();
        //        totalEmployeeCount = (int)cmd.ExecuteScalar();
        //    }
        //    return totalEmployeeCount;
        //}


        [WebMethod]
        public void GetAllFeMaleUsers()
        {
            
            List<MaleInfo> listMaleUsers = new List<MaleInfo>();
           
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT (u.first_name+' '+u.midlle_name +' '+u.last_name) as full_name, u.gender, mi.age_range, mi.mariage_status, u.phone, u.email_address, mi.adress_town FROM   Users u INNER JOIN MaleInformation mi ON u._id = mi.user_id WHERE u.gender = 'Dhedig'", con);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    MaleInfo maleUser = new MaleInfo();
                    maleUser.fullName = rdr["full_name"].ToString();
                    maleUser.gender = rdr["gender"].ToString();
                    maleUser.age = rdr["age_range"].ToString();
                    maleUser.mariageStatus = rdr["mariage_status"].ToString();
                    maleUser.phone = rdr["phone"].ToString();
                    maleUser.email = rdr["email_address"].ToString();
                    maleUser.address = rdr["adress_town"].ToString();
                    listMaleUsers.Add(maleUser);
                }
            }
            var result = new
            {
               
                aaData = listMaleUsers
            };

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(result));
        }

        [WebMethod]
        public void GetAllUsers()
        {
           
            List<MaleInfo> listMaleUsers = new List<MaleInfo>();
          
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT u.first_name,u.midlle_name, u.last_name, u.gender, mi.age_range, mi.mariage_status, u.phone, u.email_address, mi.adress_town FROM   Users u INNER JOIN MaleInformation mi ON u._id = mi.user_id", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    MaleInfo maleUser = new MaleInfo();
                    maleUser.first_name = rdr["first_name"].ToString();
                    maleUser.midlle_name = rdr["midlle_name"].ToString();
                    maleUser.last_name = rdr["last_name"].ToString();
                    maleUser.gender = rdr["gender"].ToString();
                    maleUser.age = rdr["age_range"].ToString();
                    maleUser.mariageStatus = rdr["mariage_status"].ToString();
                    maleUser.phone = rdr["phone"].ToString();
                    maleUser.email = rdr["email_address"].ToString();
                    maleUser.address = rdr["adress_town"].ToString();
                    listMaleUsers.Add(maleUser);
                }
            }
            var result = new
            {
            
                aaData = listMaleUsers
            };

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(result));
        }
    }
}
