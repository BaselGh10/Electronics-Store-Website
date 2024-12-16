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
    public partial class LogIn : System.Web.UI.Page
    {
        public static bool UserExist(string TheUserName)

        {
            string usersql = "select [User Name] from [Users] where [User Name]='" + TheUserName + "'";
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

        public static bool CorrectPass(string UserName, string Password)
        {
            string usersql1 = "select [Password] from [Users] where [User Name]='" + UserName + "'";
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string user = this.TextBox1.Text;
            string pass = this.TextBox2.Text;

            if (UserExist(user))
            {
                if (CorrectPass(user, pass))
                {
                    string usersql1 = "select [Personal Name],[Phone Number] from [Users] where [User Name]='" + user + "'";
                    OleDbConnection y = new OleDbConnection();
                    y.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
                    y.Open();

                    OleDbDataAdapter daobj1 = new OleDbDataAdapter(usersql1, y);
                    DataSet dsUser = new DataSet();
                    daobj1.Fill(dsUser);
                    DataTable dt = dsUser.Tables[0];
                    y.Close();

                    Session["Phone"] = dt.Rows[0]["Phone Number"].ToString();
                    Session["UserName"] = TextBox1.Text;
                    Session["PersonalName"] = dt.Rows[0]["Personal Name"].ToString();
                    Response.Redirect("~/UsersPages/Search.aspx");
                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "Wrong password";
                }
            }



            else
            {
                Label2.Visible = true;
                Label2.Text = "User doesn't exist...";
            }


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label2.Visible = true;
                Label2.Text = "Enter user name";
            }

            else
            {

                Session["UserName"] = TextBox1.Text;

                Response.Redirect("~/MainPages/Forgot.aspx");
            }
        }
    }
    
}