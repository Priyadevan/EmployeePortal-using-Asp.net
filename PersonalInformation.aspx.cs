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
    protected void Page_Load(object sender, EventArgs e)
    {
        serverdateandtimelbl.Text = DateTime.Now.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_profile",con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        personalinfodv.DataSource = ds;
        personalinfodv.DataBind();
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }
}