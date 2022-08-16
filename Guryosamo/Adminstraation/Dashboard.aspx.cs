using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;




namespace Guryosamo.Adminstraation
{
    public partial class Dashboard : System.Web.UI.Page
    {
        String constr = System.Configuration.ConfigurationManager.ConnectionStrings["Db_con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("SELECT COUNT(*) FROM MatchingMale ", con);
                var cmd1 = new SqlCommand("SELECT COUNT(*) FROM MatchingFemale", con);
                var ragga = Convert.ToUInt32(cmd.ExecuteScalar());
                var haween = Convert.ToUInt32(cmd1.ExecuteScalar());


                allXulasho.InnerText = (ragga + haween).ToString();
                ragXulasho.InnerText = ragga.ToString();
                dumarXulasho.InnerText = haween.ToString();
            }
        }

        protected void rpPrint_Click(object sender, EventArgs e)
        {
            ReportDocument crp = new ReportDocument();

            using (con = new SqlConnection(constr))
            {
                con.Open();
                cmd = new SqlCommand("usp_Users", con);
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                crp.Load(Server.MapPath("../CrystalReports/AllUsers.rpt"));
                crp.SetDataSource(dt);

                ExportFormatType formatType = ExportFormatType.NoFormat;
                formatType = ExportFormatType.PortableDocFormat;
                crp.ExportToHttpResponse(formatType, Response, true, "AllUsers");
                Response.End();
            }

          


          
        }
    }
}