using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Electronic_Shop
{
    public partial class ViewDevice : System.Web.UI.Page
    {
        public static bool DExist(string name)

        {
            string usersql = "select * from [Devices] where [Name]='" + name + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
            x.Open();

            OleDbDataAdapter daobj = new OleDbDataAdapter(usersql, x);
            DataSet dsUser = new DataSet();
            daobj.Fill(dsUser);
            DataTable dt1 = dsUser.Tables[0];
            x.Close();

            int v = int.Parse(dt1.Rows[0]["Stock"].ToString());

            if (v > 0)
                return true;
            return false;

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["Name"];
            Label2.Text = (string)Session["Type"];
            Label3.Text = (string)Session["Brand"];
            Label4.Text = (string)Session["Price"];
            Label6.Text = (string)Session["Stock"];

            string usersql = "select * from [Devices] where [Name]='" + Label1.Text + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
            x.Open();

            OleDbDataAdapter daobj = new OleDbDataAdapter(usersql, x);
            DataSet dsUser = new DataSet();
            daobj.Fill(dsUser);
            DataTable dt1 = dsUser.Tables[0];
            x.Close();

            string url = dt1.Rows[0]["Pic"].ToString();
            Image2.ImageUrl = url.ToString();

            if (Image2.ImageUrl.ToString() == "")
            {
                Image2.ImageUrl = "~/Pictures/NoImage.png";
            }
            else
                Image2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                Session["Amount"] = TextBox1.Text;
                int b = int.Parse((string)Session["Amount"]);
                int c = int.Parse((string)Session["Stock"]);

                string name = (string)Session["Name"];
                if (DExist(name)&& b<=c&&b>0)
                {

                    Response.Redirect("~/UsersPages/Buy.aspx");

                }
                else
                    Label5.Visible = true;
                    Label5.Text = "We didn't find this amount of the product...";
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "What amount do you want ?";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != "")
            {
                int x = int.Parse((string)Session["Price"]);
                int c = int.Parse(TextBox1.Text);

                int a = x * c;
                Label7.Visible = true;
                Label7.Text = a.ToString();
            }
            else
            {
                Label7.Visible = false;
                Label5.Visible = true;
                Label5.Text = "What amount do you want ?";
            }
        }
    }
}