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
    double basicpay;
    double da1, hra,np;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        serverdateandtimelbl.Text = DateTime.Now.ToString();
        /*con.Open();
        SqlCommand cmd = new SqlCommand("sp_salaryreport");
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();*/


    }

        protected void netpaytxtbox_TextChanged(object sender, EventArgs e)
        {
           


        }
      protected void Button1_Click(object sender, EventArgs e)
     {
         
         con.Open();
         SqlCommand cmd = new SqlCommand("insert into salaryinfo(employeeID,Role,basic_pay,da,hra,netpay) values('"+empIDtxtbox.Text+"','"+designationtxtbox.Text+"','"+basictxtbox.Text+"','"+datxtbox.Text+"','"+hratxtbox.Text+"','"+netpaytxtbox.Text+"')",con) ;
         cmd.ExecuteNonQuery();
         con.Close();
        
      }
      protected void linkbutton1_Click(object sender, EventArgs e)
      {

          Response.Redirect("Dashboard.aspx");
      }
      protected void Button1_Click1(object sender, EventArgs e)
      {
          basicpay = double.Parse(basictxtbox.Text);
          da1 = double.Parse(datxtbox.Text);
          hra = double.Parse(hratxtbox.Text);
          np = basicpay + ((basicpay * da1) / 100) + ((basicpay * hra) / 100);
          netpaytxtbox.Text = np.ToString();
      }
}