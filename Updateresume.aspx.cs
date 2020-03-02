using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        serverdateandtimelbl.Text = DateTime.Now.ToString();
        Label2.Visible = false;
        fileupload.Visible = false;

        if(!IsPostBack)
        {
            string[] filepath=Directory.GetFiles(Server.MapPath("~/Uploadfiles/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string tempfile in filepath)
            {
                files.Add(new ListItem(Path.GetFileName(tempfile),tempfile));

            }
            GridView1.DataSource = files;
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploadfiles/") + filename);
            Response.Redirect(Request.Url.AbsoluteUri);
            fileupload.Visible = true;
        }
        else
            Label2.Visible = true;
            Label2.Text = "You Must select Valid file";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string filepath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment;filename" + Path.GetFileName(filepath));
        Response.WriteFile(Server.MapPath("~/Uploadfiles/") + filepath);
        Response.End();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string filepath = (sender as LinkButton).CommandArgument;
        File.Delete(Server.MapPath("~/Uploadfiles/")+filepath);
        Response.Redirect(Request.Url.AbsoluteUri);

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }
}