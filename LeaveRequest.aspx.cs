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
        updatedlbl.Visible = false;

        if(!IsPostBack)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if(Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
        Calendar1.Attributes.Add("style", "position:absolute");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar2.Visible)
        {
            Calendar2.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;
        }
        Calendar2.Attributes.Add("style", "position:absolute");
    }
   
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        from_datetxtbox.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;

    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        to_datetxtbox.Text = Calendar2.SelectedDate.ToString("yyyy/MM/dd");
        Calendar2.Visible = false;
    }
     
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd =new SqlCommand("insert into leaverequest values('"+from_datetxtbox.Text+"','"+to_datetxtbox.Text+"','"+no_of_daystxtbox.Text+"','"+reasontxt_box.Text+"')",con);
        cmd.ExecuteNonQuery();
        Response.Write("Leave Request Submitted");
        updatedlbl.Visible = true;
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }
}
