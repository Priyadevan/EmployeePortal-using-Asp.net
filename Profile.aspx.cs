using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        serverdateandtimelbl.Text = DateTime.Now.ToString();

         if(Session["username"]==null)
        {
            Response.Redirect("Login.aspx");
        }

        usernamelbl.Text = "Hi  " + Session["username"] + " Have a great day";
    
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Changepassword.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PersonalInformation.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Updateresume.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Getsalaryreport.aspx");
    }
  
    protected void LinkButton6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }
}