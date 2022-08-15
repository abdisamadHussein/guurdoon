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
 
    public partial class Profile : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        DataTable dt;
        SqlDataAdapter da;
        String email;
        int Id;

        protected void Page_Load(object sender, EventArgs e)
        {
            gvInfo.Visible = false;
            gvinfoMale.Visible = false;
            View.Visible = false;
            pending.Visible = false;
            reject.Visible = false;
            beforeAcept.Visible = false;
            wait.Visible = false;
            notFound.Visible = false;
            rejected.Visible = false;
            infoFemale.Visible = false;
            infoMale.Visible = false;

           

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
                if (dr.Read() == true)
                {
                    Session["username"] = dr["first_name"].ToString(); ;
                    profile_info_name.InnerText = dr["first_name"].ToString() + " " + dr["midlle_name"].ToString() + " " + dr["last_name"].ToString(); ;
                    profile_info_email.InnerText = dr["email_address"].ToString(); ;
                    profile_info_tellefonka.InnerText = dr["phone"].ToString(); ;
                    Session["gender"] = dr["gender"].ToString();
                  
                    dr.Close();
                    cmd = new SqlCommand("SELECT [_id] FROM Users WHERE email_address= '" + email + "'", con);
                    Id = Convert.ToInt32(cmd.ExecuteScalar());
                    cmd = new SqlCommand("SELECT registred, paid FROM Status S INNER JOIN  Users U ON S.user_id = " + Id + "", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                        Session["paid"] = dr["paid"].ToString();
                        Session["registred"] = dr["registred"].ToString();

                    }
                    else
                    {
                        Session["paid"] = "";
                        Session["registred"] = "";
                    }
                    dr.Close();
                }
                //image check
                cmd = new SqlCommand("select * from image where useremail='" + email + "'", con);
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["Imagepath"] = dr["Imagepath"].ToString();
                    dr.Close();
                }
                
            }
            if (Session["Imagepath"] != null)
            {
                picture.Style.Add("background-image", "../" + Session["Imagepath"].ToString());

            }
            else
            {
                picture.Style.Add("background-image", "../static/logo.png");
            }
            if (Session["paid"].ToString() == "request")
            {
                pending.Visible = true;
            }
            if (Session["paid"].ToString() == "s_request")
            {
                pending.Visible = true;
                second.InnerText = "markle";
            }
            if (Session["paid"].ToString() == "false")
            {
                wait.Visible = true;
            }

            if (Session["paid"].ToString() == "wait")
            {
                wait.Visible = true;
            }
            if (Session["paid"].ToString() == "reject")
            {
                reject.Visible = true;
            }
            if (Session["notFound"] != null)
            {
                if (Session["notFound"].ToString() == "yes")
                {
                    notFound.Visible = true;
                }

            }
           
            using (con = new SqlConnection(constr))
            {
                con.Open();
                try
                {
                    cmd = new SqlCommand("SElECT start_date, end_date FROM FreeDruration WHERE rank = (SELECT MAX(rank) FROM FreeDruration)", con);
                    dr = cmd.ExecuteReader();
                    DateTime startDate;
                    DateTime endDate;
                    if (dr.Read())
                    {
                        startDate = DateTime.ParseExact(dr["start_date"].ToString(), "M/dd/yyyy hh:mm:ss tt", CultureInfo.InvariantCulture);
                        endDate = DateTime.ParseExact(dr["end_date"].ToString(), "M/dd/yyyy hh:mm:ss tt", CultureInfo.InvariantCulture);

                        DateRange range = new DateRange(startDate, endDate);
                        if (range.Includes(DateTime.Now))
                        {
                            Session["free"] = "true";

                        }else
                        {

                        Session["free"] = "";
                        }

                    }
                    else
                    {
                        Session["free"] = "";
                    }
                   
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            if (Session["free"] != null)
            {
                if (Session["free"].ToString() == "true")
                {
                    reject.Visible = false;
                    pending.Visible = false;
                }
            }


            using (con = new SqlConnection(constr))
            {
                con.Open();
                try
                {

                    if ((String)Session["gender"] == "Lab")
                    {
                        cmd = new SqlCommand("SELECT (u.first_name+' '+u.midlle_name+' '+last_name) as full_name, u.phone, f.adress_town, f.education_level,f.do_you_work, f.job_title, f.cooking FROM Users u INNER JOIN FemaleInformation f ON u._id = f.user_id  WHERE u._id =(SELECT  female_id FROM MatchingMale  WHERE result='success' AND rank = (SELECT MAX(rank) FROM MatchingMale WHERE male_id =  "+Id+")) OR u._id = (SELECT  female_id FROM MatchingFemale  WHERE result='success'AND rank = (SELECT MAX(rank) FROM MatchingFemale WHERE male_id =  "+Id+") )", con);
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            infoFemale.Visible = true;
                            if (dr["do_you_work"].ToString() == "Maya")
                            {
                                fwork.InnerText = "Masha qeyso";
                                fname.InnerText = dr["full_name"].ToString();
                                fphone.InnerText = dr["phone"].ToString();
                                faddress.InnerText = dr["adress_town"].ToString();
                                feducation.InnerText = dr["education_level"].ToString();
                                
                                fcooking.InnerText = "ku fiicantay " + dr["cooking"].ToString();
                            }
                            else
                            {
                                fname.InnerText = dr["full_name"].ToString();
                                fphone.InnerText = dr["phone"].ToString();
                                faddress.InnerText = dr["adress_town"].ToString();
                                feducation.InnerText = dr["education_level"].ToString();
                                fwork.InnerText = dr["job_title"].ToString();
                                fcooking.InnerText = "ku fiicantay " + dr["cooking"].ToString();
                            }

                        }
                    }
                    else
                    {
                        cmd = new SqlCommand("SELECT (u.first_name+' '+u.midlle_name+' '+last_name) as full_name, u.phone, m.adress_town, m.education_level, m.job_title, m.homework_help FROM Users u INNER JOIN MaleInformation m ON u._id = m.user_id  WHERE u._id =(SELECT  male_id FROM MatchingMale  WHERE result='success' AND  rank = (SELECT MAX(rank) FROM MatchingMale WHERE female_id = " + Id + ")) OR u._id = (SELECT  male_id FROM MatchingFemale  WHERE result='success' AND rank = (SELECT MAX(rank) FROM MatchingFemale WHERE female_id = " + Id + "))", con);
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            infoMale.Visible = true;
                            Mname.InnerText = dr["full_name"].ToString();
                            Mphone.InnerText = dr["phone"].ToString();
                            Maddress.InnerText = dr["adress_town"].ToString();
                            Meducation.InnerText = dr["education_level"].ToString();
                            Mwork.InnerText = dr["job_title"].ToString();
                            support.InnerText = "Ku fiicanyahay "+ dr["homework_help"].ToString();

                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            using (con = new SqlConnection(constr))
            {
                con.Open();

                if ((String)Session["gender"] == "Dheddig")
                {


                    cmd = new SqlCommand("SELECT male_status,female_staus, result  FROM MatchingFemale WHERE  rank = (SELECT MAX(rank) as rank FROM MatchingFemale WHERE female_id = " + Id + ")", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {

                        Session["female_status"] = dr["female_staus"].ToString();
                        Session["male_status"] = dr["male_status"].ToString();
                        Session["result"] = dr["result"].ToString();


                    }
                    else
                    {

                        Session["female_status"] = "";
                        Session["male_status"] = "";
                        Session["result"] = "";
                    }
                    dr.Close();
                    if (Session["female_status"].ToString() == "accept" && Session["male_status"].ToString() == "wait")
                    {
                        beforeAcept.Visible = true;
                    }
                    if (Session["male_status"].ToString() == "rejected")
                    {
                        rejected.Visible = true;
                    }
                    if (Session["result"].ToString() == "failed")
                    {
                        beforeAcept.Visible = false;
                    }
                    cmd = new SqlCommand("SELECT male_id,female_id,male_status,female_staus ,result FROM MatchingMale WHERE female_id = '" + Id + "' AND female_staus ='wait'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                        Session["maleChoosenId"] = dr["male_id"].ToString();

                        dr.Close();
                        cmd = new SqlCommand("SELECT mi.age_range, mi.height, mi.weight, mi.skin_color, mi.mariage_status, mi.education_level, mi.work_place, mi.job_title, mi.homework_help FROM   MaleInformation mi  INNER JOIN Users u ON mi.user_id =u._id  WHERE u._id IN (SELECT male_id FROM MatchingMale WHERE female_id = '" + Id + "' AND female_staus ='wait')", con);
                        da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        AcceptInfo.DataSource = dt;
                        AcceptInfo.DataBind();
                        pending.Visible = false;
                        reject.Visible = false;

                    }
                }
                else
                {


                    cmd = new SqlCommand("SELECT male_status,female_staus, result  FROM MatchingMale WHERE  rank = (SELECT MAX(rank) as rank FROM MatchingMale WHERE male_id = " + Id + ")", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["female_status"] = dr["female_staus"].ToString();
                        Session["male_status"] = dr["male_status"].ToString();
                        Session["result"] = dr["result"].ToString();

                    }
                    else
                    {
                        Session["female_status"] = "";
                        Session["male_status"] = "";
                        Session["result"] = "";
                    }
                    dr.Close();
                    if (Session["male_status"].ToString() == "accept" && Session["female_status"].ToString() == "wait")
                    {
                        beforeAcept.Visible = true;
                    }
                    if (Session["female_status"].ToString() == "rejected")
                    {
                        rejected.Visible = true;
                    }
                    if (Session["result"].ToString() == "failed")
                    {
                        beforeAcept.Visible = false;
                    }
                    cmd = new SqlCommand("SELECT male_id,female_id,male_status,female_staus ,result FROM MatchingFemale WHERE male_id = '" + Id + "' AND male_status ='wait' ", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                        Session["femleChoosenId"] = dr["female_id"].ToString();
                        dr.Close();
                        cmd = new SqlCommand("SELECT fi.age_range, fi.height, fi.weight, fi.skin_color, fi.mariage_status, fi.education_level, fi.work_place, fi.job_title, fi.cooking, fi.do_you_work FROM   FemaleInformation fi INNER JOIN Users u ON fi.user_id =u._id   WHERE u._id IN (SELECT female_id FROM MatchingFemale WHERE male_id = "+Id+" AND male_status ='wait')", con);
                        da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        AcceptInfoFemale.DataSource = dt;
                        AcceptInfoFemale.DataBind();

                    }
                }

            }



            if (Session["Avgr"] != null)
            {
                gvInfo.Visible = true;
                dt = (DataTable)Session["data"];
                DataTable datatable = new DataTable();
                if (Session["data"] != null)
                {
                    if ((String)Session["gender"] == "Dheddig")
                    {

                        foreach (DataRow row in dt.Rows)
                        {
                            datatable.Columns.AddRange(new DataColumn[11] { new DataColumn("male_user_id"), new DataColumn("female_user_id"), new DataColumn("age_range"), new DataColumn("Mariage_status"), new DataColumn("education_level"), new DataColumn("height"), new DataColumn("weight"), new DataColumn("skin_color"), new DataColumn("homework_help"), new DataColumn("TOTAL"), new DataColumn("Average") });
                            datatable.Rows.Add(row[0].ToString(), row[1].ToString(), row[2].ToString(), row[3].ToString(), row[4].ToString(), row[5].ToString(), row[6].ToString(), row[7].ToString(), row[8].ToString(), row[9].ToString(), row[10].ToString());

                        }


                        foreach (DataRow row in datatable.Rows)
                        {

                            for (int i = 2; i <= 8; i++)
                            {
                                if (row[i].ToString() == "100")
                                {
                                    row[i] = "✔";
                                }
                                else
                                {
                                    row[i] = "x";
                                }
                            }
                            row[10] = row[10] + "%";


                        }
                        gvinfoMale.Visible = true;
                        gvinfoMale.DataSource = datatable;
                        gvinfoMale.DataBind();
                    }
                    else
                    {
                        foreach (DataRow row in dt.Rows)
                        {
                            datatable.Columns.AddRange(new DataColumn[12] { new DataColumn("male_user_id"), new DataColumn("female_user_id"), new DataColumn("age_range"), new DataColumn("Mariage_status"), new DataColumn("education_level"), new DataColumn("height"), new DataColumn("weight"), new DataColumn("skin_color"), new DataColumn("cunto_karinta"), new DataColumn("does_she_work"), new DataColumn("TOTAL"), new DataColumn("Average") });
                            datatable.Rows.Add(row[0].ToString(), row[1].ToString(), row[2].ToString(), row[3].ToString(), row[4].ToString(), row[5].ToString(), row[6].ToString(), row[7].ToString(), row[8].ToString(), row[9].ToString(), row[10].ToString(), row[11].ToString());

                        }

                        foreach (DataRow row in datatable.Rows)
                        {

                            for (int i = 2; i <= 9; i++)
                            {
                                if (row[i].ToString() == "100")
                                {
                                    row[i] = "✔";
                                }
                                else
                                {
                                    row[i] = "x";
                                }
                            }
                            row[11] = row[11] + "%";


                        }
                        gvInfo.Visible = true;
                        gvInfo.DataSource = datatable;
                        gvInfo.DataBind();
                    }
                    var avg = Convert.ToInt32(Session["Avgr"]);

                    int sub = 100;
                    int b = sub - avg;

                    string datachart = "";
                    datachart += "<script>";
                    datachart += "data = [" + avg.ToString() + "," + b.ToString() + "]";
                    datachart += "</script>";
                    l.Text = datachart.ToString();
                }

            }
        }
        


        protected void gvInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "accept")
            {

                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    dt = (DataTable)Session["data"];
                    foreach (DataRow row in dt.Rows)
                    {

                        var cmd1 = new SqlCommand("INSERT INTO MatchingMale(male_id, female_id, male_status, female_staus, result, age_range, mariage_status, education_level, height, weight, skin_color, does_she_work, cooking, total, average) " +
                            "VALUES ('" + row[0] + "','" + row[1] + "','accept','wait','wait','" + row[2] + "','" + row[3] + "','" + row[4] + "','" + row[5] + "','" + row[6] + "','" + row[7] + "','" + row[9] + "','" + row[8] + "','" + row[10] + "','" + row[11] + "')", con);
                        cmd1.ExecuteNonQuery();
                        cmd = new SqlCommand("SELECT MAX(rank) as rank  FROM MatchingMale WHERE male_id = " + row[0] + " ", con);





                    }

                    gvInfo.Visible = false;
                    chartbody.Visible = false;
                    Session.Remove("data");
                    Response.Redirect(Request.RawUrl);
                }
            }
            if (e.CommandName == "deny")
            {
                gvInfo.Visible = false;
                chartbody.Visible = false;
                Session.Remove("data");
                Response.Redirect(Request.RawUrl);

            }
        }

        protected void View_Click(object sender, EventArgs e)
        {


        }



        protected void AcceptInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "accept")
            {
                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    var male = Convert.ToInt32(Session["maleChoosenId"]);
                    cmd = new SqlCommand("UPDATE MatchingMale SET female_staus = 'accept' ,result = 'success' WHERE female_id =" + Id + "AND male_id = " + Convert.ToInt32(Session["maleChoosenId"]) + "", con);
                    cmd.ExecuteNonQuery();

                    cmd = new SqlCommand("UPDATE Status SET paid = 's_request' WHERE user_id = '" + Id + "'", con);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("UPDATE Status SET paid = 's_request' WHERE user_id = '" + Convert.ToInt32(Session["maleChoosenId"]) + "'", con);
                    cmd.ExecuteNonQuery();
                    AcceptInfo.Visible = false;
                    Response.Redirect(Request.RawUrl);



                }
            }
            if (e.CommandName == "deny")
            {
                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE MatchingMale SET [female_staus] = 'rejected' ,[result] = 'failed' WHERE female_id = '" + Id + "' AND male_id = '" + Convert.ToInt32(Session["maleChoosenId"]) + "'", con);

                    cmd.ExecuteNonQuery();
                    AcceptInfo.Visible = false;
                    Response.Redirect(Request.RawUrl);

                }
            }
        }



        protected void gvinfoMale_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "accept")
            {
                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    dt = (DataTable)Session["data"];
                    foreach (DataRow row in dt.Rows)
                    {
                        var cmd1 = new SqlCommand("INSERT INTO MatchingFemale(female_id, male_id, male_status, female_staus, result, age_range, mariage_status, education_level, height, weight, skin_color, homework_help, total, average) " +
                             "VALUES ('" + row[0] + "','" + row[1] + "','wait','accept','wait','" + row[2] + "','" + row[3] + "','" + row[4] + "','" + row[5] + "','" + row[6] + "','" + row[7] + "','" + row[8] + "','" + row[9] + "','" + row[10] + "')", con);
                        cmd1.ExecuteNonQuery();

                    }

                    gvinfoMale.Visible = false;
                    chartbody.Visible = false;
                    Session.Remove("data");
                    Response.Redirect(Request.RawUrl);
                }
            }
            if (e.CommandName == "deny")
            {

                gvinfoMale.Visible = false;
                chartbody.Visible = false;
                Session.Remove("data");
                Response.Redirect(Request.RawUrl);

            }
        }

        protected void AcceptInfoFemale_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "accept")
            {
                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE MatchingFemale SET [male_status] = 'accept' ,[result] = 'success' WHERE male_id = '" + Id + "' AND female_id = '" + Convert.ToInt32(Session["femleChoosenId"]) + "'", con);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("UPDATE Status SET paid = 's_request' WHERE user_id = '" + Id + "'", con);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("UPDATE Status SET paid = 's_request' WHERE user_id = '" + Convert.ToInt32(Session["femleChoosenId"]) + "'", con);
                    cmd.ExecuteNonQuery();
                    AcceptInfoFemale.Visible = false;
                    AcceptInfo.Visible = false;
                    Response.Redirect(Request.RawUrl);



                }
            }
            if (e.CommandName == "deny")
            {
                using (con = new SqlConnection(constr))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE MatchingFemale SET [male_status] = 'rejected' ,[result] = 'failed' WHERE male_id  = '" + Id + "' AND female_id = '" + Convert.ToInt32(Session["femleChoosenId"]) + "'", con);

                    cmd.ExecuteNonQuery();
                    AcceptInfoFemale.Visible = false;
                    Session.Remove("data");
                    Response.Redirect(Request.RawUrl);

                }
            }
        }

        protected void renew_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE  s SET s.paid = 'wait'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u._id = '" + Id + "'", con);
                cmd.ExecuteNonQuery();
                reject.Visible = false;
                wait.Visible = true;
            }
        }

        protected void paid_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("UPDATE  s SET s.paid = 'false'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u._id = '" + Id + "'", con);
                cmd.ExecuteNonQuery();
                pending.Visible = false;
                wait.Visible = true;
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //btnupdate.Visible = true;
            // FileUpload1.Visible=true;

        }



        //protected void btnupdate_Click(object sender, EventArgs e)
        //{
        //   
        //}

     

        protected void Upload(object sender, EventArgs e)
        {
            FileUpload2.Attributes["onchange"] = "UploadFile(this)";
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            FileUpload2.Attributes["onchange"] = "UploadFile(this)";
            using (con = new SqlConnection(constr))
            {
                con.Open();
                string filename = (Server.MapPath("~/img/" + FileUpload2.FileName.ToString()));
                string imgPath = filename;
                FileInfo file = new FileInfo(imgPath);
                if (file.Exists)
                {
                    file.Delete();
                }

                if (FileUpload2.PostedFile != null)
                {
                    string strfile = Path.GetExtension(FileUpload2.FileName);
                    if (strfile == ".jpg" || strfile == ".jpeg" || strfile == "gif" || strfile == ".png")
                    {

                        cmd = new SqlCommand("select * from image where useremail='" + email + "'", con);
                        dr = cmd.ExecuteReader();
                        if (dr.Read() == true)
                        {
                            dr.Close();

                            string imge = Path.GetFileName(FileUpload2.PostedFile.FileName);
                            FileUpload2.SaveAs(Server.MapPath("~/img/") + imge);
                            var path = "img/" + imge;
                            cmd = new SqlCommand("update image set imagename='" + imge + "',imagepath='" + path + "' where useremail='" + email + "'", con);
                            cmd.ExecuteNonQuery();

                        }
                        else
                        {
                            dr.Close();

                            string imge = Path.GetFileName(FileUpload2.PostedFile.FileName);
                            FileUpload2.SaveAs(Server.MapPath("~/img/") + imge);
                            var path = "img/" + imge;
                            cmd = new SqlCommand("insert into image values('" + imge + "','" + path + "','" + email + "')", con);
                            cmd.ExecuteNonQuery();

                        }
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        lbmgs.Text = "Nuuca Sawir ee la ogal yahy waaa (jpg jpeg gif png)";
                        lbmgs.ForeColor = System.Drawing.Color.Red;
                        


                    }

                }
                else
                {
                    lbmgs.Text = "Nuuca Sawir ee la ogal yahy waaa (jpg jpeg gif png)";
                    lbmgs.ForeColor = System.Drawing.Color.Red;
                }


            }
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            FileUpload2.Attributes["onchange"] = "UploadFile(this)";

        }
    }

}








