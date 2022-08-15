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
    public partial class Registrationfee : System.Web.UI.Page
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
            allpendingUsers = Convert.ToInt32(Session["reg_pending"]);
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
                cmd = new SqlCommand("SELECT  ( first_name+ ' '+ midlle_name+ ' '+last_name) as full_name, email_address, phone FROM  Users  where registertion_fee = 'request'", con);
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
                                cmd = new SqlCommand("UPDATE Users SET registertion_fee = 'true'  WHERE email_address = '" + email + "'", con);
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
                                cmd = new SqlCommand("UPDATE Users SET registertion_fee = 'true'  WHERE email_address = '"+email+"'", con);
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
                Response.Redirect(Request.RawUrl);

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
                                cmd = new SqlCommand("UPDATE Users SET registertion_fee = 'false'  WHERE email_address = '" + email + "'", con);
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
                Accept.Visible = false;
                Reject.Visible = false;
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
                                cmd = new SqlCommand("UPDATE Users SET registertion_fee = 'false'  WHERE email_address = '" + email + "'", con);
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
    }
}