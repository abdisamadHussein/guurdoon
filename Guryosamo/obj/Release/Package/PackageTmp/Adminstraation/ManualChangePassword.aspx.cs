using System;
using System.Data;
using System.Data.SqlClient;

namespace Guryosamo.Adminstraation
{
    public partial class ManualChangePassword : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        string Email;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchangepassword_Click(object sender, EventArgs e)
        {
            Email = (Session["email"].ToString());
            try
            {
                con = new SqlConnection(constr);
                if (con.State == ConnectionState.Closed)
                    con.Open();


                cmd = new SqlCommand("usp_Users", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = Email;
                cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = OldPassword.Text;
                cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Auth";


                dr = cmd.ExecuteReader();


                if (dr.Read() == true)
                {
                    dr.Close();
                    cmd = new SqlCommand("usp_Users", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = Email;
                    cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = txtPasswordNew.Text;
                    cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Update";
                    cmd.ExecuteNonQuery();
                    Changepas.InnerText = " passwordkada waalugu badalay " + txtPasswordNew.Text;
                    result.Visible = false;


                }
                else
                {
                    dr.Close();
                    cmd = new SqlCommand("usp_Addmin", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@email_address", SqlDbType.VarChar).Value = Email;
                    cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = OldPassword.Text;
                    cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Auth";
                    dr = cmd.ExecuteReader();
                    if (dr.Read() == true)
                    {
                        dr.Close();
                        cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = txtPasswordNew.Text;
                        cmd.Parameters.AddWithValue("@StatementType", SqlDbType.NVarChar).Value = "Update";
                        cmd.ExecuteNonQuery();
                        Changepas.InnerText = " passwordkada waalugu badalay " + txtPasswordNew.Text;
                        result.Visible = false;
                    }
                    else
                    {
                        dr.Close();
                        result.InnerText = "passwordkada hore ma hana midsaxa fadalan iska hubi";
                        OldPassword.Text = "";
                        txtPasswordNew.Text = "";
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