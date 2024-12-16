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
    public partial class ManagerLogIn : System.Web.UI.Page
    {
        public static bool ManagerExist(string ManagerName)

        {
            string usersql = "select [Manager Name] from [Managers] where [Manager Name]='" + ManagerName + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
            x.Open();

            OleDbDataAdapter daobj = new OleDbDataAdapter(usersql, x);
            DataSet dsUser = new DataSet();
            daobj.Fill(dsUser);
            DataTable dt1 = dsUser.Tables[0];
            x.Close();

            if (dt1.Rows.Count > 0)
                return true;
            return false;

        }

        public static bool CorrectPass(string ManagerName, string Password)
        {
            string usersql1 = "select [Password] from [Managers] where [Manager Name]='" + ManagerName + "'";
            OleDbConnection y = new OleDbConnection();
            y.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
            y.Open();

            OleDbDataAdapter daobj1 = new OleDbDataAdapter(usersql1, y);
            DataSet dsUser = new DataSet();
            daobj1.Fill(dsUser);
            DataTable dt = dsUser.Tables[0];
            y.Close();

            if (dt.Rows[0]["Password"].ToString() == Password)
                return true;
            else
                return false;



        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name = this.TextBox1.Text;
            string Pass = this.TextBox2.Text;

            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                if (ManagerExist(Name))
                {
                    if (CorrectPass(Name, Pass))
                    {
                        Session["ManagerName"] = TextBox1.Text;
                        Response.Redirect("~/ManagersPages/ManagerPage.aspx");
                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Wrong password";
                    }
                }



                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Manager doesn't exist...";
                }
            }

            else
            {
                Label1.Visible = true;
                Label1.Text = "Fill the fields";
            }
        }
    }
}