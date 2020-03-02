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
    string connectionstring = (@"Data Source=(localdb)\v11.0;Initial Catalog=employeeportal;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Invalidlabel.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
            con.Open();
            string query = "select count(1) from userlogin where username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username",usernametxtbox.Text.Trim());
            cmd.Parameters.AddWithValue("@password", passwordtxtbox.Text.Trim());
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if(count==1)
            {
                Session["username"] = usernametxtbox.Text.Trim();
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Invalidlabel.Visible = true;
            }

        }
    }
}