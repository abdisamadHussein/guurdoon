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
    public partial class Acount : System.Web.UI.MasterPage
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
       
           

            linkXul.Visible = false;

            username.InnerText = Session["username"].ToString();
            if (Session["Imagepath"] != null)
            {
                picture.Style.Add("background-image", "../" + Session["Imagepath"].ToString());
          
            }
            else
            {
                picture.Style.Add("background-image", "../static/logo.png");
            }

           
           

            var y = (String)Session["registred"];
            if (Session["registred"].ToString() == "true")
            {
                linkReg.Visible = false;
               
                if (Session["paid"].ToString() == "true")
                {
                  
                    if (Session["result"].ToString() == "success" || Session["result"].ToString() == "failed")
                    {
                        linkXul.Visible = true;
                        return;
                    }
                    else
                    {
                        linkXul.Visible = true;
                    }

                }
               

                if (Session["female_status"].ToString() == "wait")
                {
                    linkXul.Visible = false;
                }
                if (Session["female_status"].ToString() == "accept")
                {
                    linkXul.Visible = false;
                }
                if (Session["male_status"].ToString() == "rejected")
                {
                    linkXul.Visible = true;
                }

                if (Session["male_status"].ToString() == "accept")
                {
                    linkXul.Visible = false;
                }
                if (Session["free"] != null)
                {
                    if (Session["free"].ToString() == "true")
                    {
                        linkXul.Visible = true;
                        return;
                    }
                }
            }

        }
    


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../Auth/SignIn.aspx");
        }
    }
}