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
        checklbl.Visible = false;
        notsamelbl.Visible = false;
        Successlbl.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(connectionstring))
        {
         
            SqlCommand cmd=new SqlCommand("select password from userlogin where password='"+ oldpwdtxtbox.Text+"'",con);

            SqlDataAdapter sda=new SqlDataAdapter(cmd);
            DataTable dt=new DataTable();
            sda.Fill(dt);

            if(dt.Rows.Count.ToString() == "1")
            {
                if(newpwdtxtbox.Text==confirmpwdtxtbox.Text)
                {
                    con.Open();
                    SqlCommand scmd = new SqlCommand("update userlogin set password='" + confirmpwdtxtbox.Text + "' where password='" + oldpwdtxtbox .Text+ "' ",con);
                    scmd.ExecuteNonQuery();
                    con.Close();
                    Successlbl.Visible = true;
                    Successlbl.Text = "Successfully Updated";
                }
                else
                {
                    notsamelbl.Visible = true;
                    notsamelbl.Text="New Password and Confirm Password should be same";
                }
            }
            else
            {
                checklbl.Visible=true;
                checklbl.Text="Please check your old Password";
            }
           
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }
}