using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace Guryosamo.Adminstraation
{
    public partial class Pending : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        SqlDataAdapter da;
        int allpendingUsers;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            table.Visible = false;
            message.Visible = false;
            error.Visible = false;
            allpendingUsers = Convert.ToInt32(Session["allpending"]);
            if (allpendingUsers > 0)
            {
                table.Visible = true;

                if (!IsPostBack)
                {
                    FillPendingUsers();
              
                }

            }
            else
            {
                message.Visible = true;

            }



        }
        void FillPendingUsers()
        {
            try
            {
                con = new SqlConnection(constr);
                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new SqlCommand("SELECT  ( u.first_name+ ' '+ u.midlle_name+ ' '+u.last_name) as full_name, email_address, phone, p.method, p.service, p.pay_no FROM  Users u INNER JOIN  Status s ON u._id = s.user_id INNER JOIN Payments p ON u._id = p.user_id  WHERE (p.payment_id IN (SELECT MAX(payment_id) FROM Payments GROUP BY user_id)) AND s.paid = 'false' OR s.paid= 'wait'", con);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.UseAccessibleHeader = true;
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;


            }
            catch (Exception ex)
            {

                //Label1.Text = ex.Message;
            }
        }



        //protected void gvPending_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    //int rowIndex = Convert.ToInt32(e.CommandArgument);
        //    //GridViewRow row = gvPending.Rows[rowIndex];




        //    //if (e.CommandName == "accept")
        //    //{
        //    //    using (con = new SqlConnection(constr))
        //    //    {
        //    //        con.Open();

        //    //        cmd = new SqlCommand("UPDATE  s SET s.paid = 'true'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u.email_address = '"+emailaddress+"'", con);
        //    //        cmd.ExecuteNonQuery();
        //    //        FillPendingUsers();

        //    //        Response.Redirect(Request.RawUrl);


        //    //    }
        //    //}
        //    //if (e.CommandName == "deny")
        //    //{
        //    //    using (con = new SqlConnection(constr))
        //    //    {
        //    //        con.Open();

        //    //        cmd = new SqlCommand("UPDATE  s SET s.paid = 'reject'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u.email_address = '" + emailaddress+"'", con);
        //    //        cmd.ExecuteNonQuery();
        //    //        FillPendingUsers();
        //    //        Response.Redirect(Request.RawUrl);

        //    //    }
        //    //}
        //}

        protected void Accept_Click(object sender, EventArgs e)
        {
            string email;
            bool isSelectAll = ((CheckBox)GridView1.HeaderRow.FindControl("CheckSelectAll")).Checked;
            if (isSelectAll)
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    CheckBox checkSelect = ((CheckBox)GridView1.Rows[i].FindControl("CheckSelect"));
                    if (checkSelect.Checked == true)
                    {
                        Response.Write("success");
                        email = GridView1.Rows[i].Cells[2].Text;
                        try
                        {
                            using (con = new SqlConnection(constr))
                            {
                                con.Open();
                                cmd = new SqlCommand("UPDATE  s SET s.paid = 'true'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u.email_address = '" + email + "'", con);
                                cmd.ExecuteNonQuery();




                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }

                    else
                    {
                        error.Visible = true;
                    }
                }
                FillPendingUsers();
                table.Visible = false;
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    CheckBox checkSelect = ((CheckBox)GridView1.Rows[i].FindControl("CheckSelect"));

              
                    if (checkSelect.Checked == true)
                    {
                        Response.Write("success");
                        email = GridView1.Rows[i].Cells[2].Text;
                        try
                        {
                            using (con = new SqlConnection(constr))
                            {
                                con.Open();
                                cmd = new SqlCommand("UPDATE  s SET s.paid = 'true'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u.email_address = '" + email + "'", con);
                                cmd.ExecuteNonQuery();
                               

                               

                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }

                    else
                    {
                        error.Visible = true;
                   
                    }
                }
                FillPendingUsers();
                table.Visible = false;
                Response.Redirect(Request.RawUrl);

            }
        }

        protected void CheckSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            bool isSelect = ((CheckBox)GridView1.HeaderRow.FindControl("CheckSelectAll")).Checked;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (isSelect)
                {
                    ((CheckBox)GridView1.Rows[i].FindControl("CheckSelect")).Checked = true;
                }
                else
                {
                    ((CheckBox)GridView1.Rows[i].FindControl("CheckSelect")).Checked = false;
                }
            }
        }

        protected void Reject_Click(object sender, EventArgs e)
        {
            string email;
            bool isSelectAll = ((CheckBox)GridView1.HeaderRow.FindControl("CheckSelectAll")).Checked;
            if (isSelectAll)
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    CheckBox checkSelect = ((CheckBox)GridView1.Rows[i].FindControl("CheckSelect"));
                    if (checkSelect.Checked == true)
                    {
                        Response.Write("success");
                        email = GridView1.Rows[i].Cells[2].Text;
                        try
                        {
                            using (con = new SqlConnection(constr))
                            {
                                con.Open();
                                cmd = new SqlCommand("UPDATE  s SET s.paid = 'reject'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u.email_address = '" + email + "'", con);
                                cmd.ExecuteNonQuery();




                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }

                    else
                    {
                        error.Visible = true;
                    }
                }
                FillPendingUsers();
                table.Visible = false;
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    CheckBox checkSelect = ((CheckBox)GridView1.Rows[i].FindControl("CheckSelect"));


                    if (checkSelect.Checked == true)
                    {
                        Response.Write("success");
                        email = GridView1.Rows[i].Cells[2].Text;
                        try
                        {
                            using (con = new SqlConnection(constr))
                            {
                                con.Open();
                                cmd = new SqlCommand("UPDATE  s SET s.paid = 'reject'  FROM Status s INNER JOIN  Users u  ON u._id = s.user_id  WHERE u.email_address = '" + email + "'", con);
                                cmd.ExecuteNonQuery();

                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }

                    else
                    {
                        error.Visible = true;

                    }
                }
                FillPendingUsers();
                table.Visible = false;
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}