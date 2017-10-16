using System;
using System.Web.UI;
using System.Data.SqlClient;

namespace Proj
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Anonymous;Initial Catalog=demo;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        protected void Page_Load(object sender, EventArgs e)//
        {
            txtName.Focus();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)//client side validation
            {
                DB dB = new DB();
                if (dB.SaveJsonTextToDb(txtName.Text, favClr.SelectedItem.ToString(), Convert.ToDateTime(txtDate.Text).ToShortDateString())) {
                Label1.Text = string.Format("Hi, {0}, based on the expiration date of {1} your license expires in {2} days. You favorite color is {3}.",txtName.Text, Convert.ToDateTime(txtDate.Text).ToShortDateString(), Math.Floor((Convert.ToDateTime(txtDate.Text) - DateTime.Now).TotalDays), favClr.SelectedItem.ToString());
                }
            }
            else
            {
                Label1.Text = "Validation Failed";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}