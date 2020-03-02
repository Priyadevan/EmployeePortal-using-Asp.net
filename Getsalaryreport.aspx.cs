using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog=employeeportal;Integrated Security=True");
    public string salreport;
    protected void Page_Load(object sender, EventArgs e)
    {
        serverdateandtimelbl.Text = DateTime.Now.ToString();

        usernamelbl.Text = "-" + Session["username"];
        con.Open();
        salreport = Session["username"].ToString();
        SqlCommand cmd = new SqlCommand("sp_getsalaryreport", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@uname",salreport);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        getsalaryreportdv.DataSource = ds;
        getsalaryreportdv.DataBind();
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }
}