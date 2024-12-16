using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


namespace Electronic_Shop
{
    public partial class SignUp : System.Web.UI.Page
    {
        public static bool ConfirmPass(string Pass, string Pass2)

        {
            if (Pass.ToString() != null)
            {
                if (Pass.ToString() == Pass2.ToString())
                {
                    return true;

                }
                else
                {
                    return false;
                }
            }
            else
                return false;
        }

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
        public static bool PhoneExist(string Phone)

        {
            string usersql = "select [Phone Number] from [Users] where [Phone Number]='" + Phone + "'";
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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string X = TextBox1.Text;
            string A = TextBox2.Text;
            string Y = TextBox3.Text;
            string Z = TextBox4.Text;
            string V = TextBox5.Text;
            string B = TextBox6.Text;


            if (TextBox1.Text!=""&& TextBox2.Text != ""&& TextBox3.Text != ""&& TextBox4.Text != ""&&TextBox5.Text!=""&& TextBox6.Text != ""&& DropDownList1.SelectedItem!=null)
            { 
            
            
                if (ConfirmPass(Y, Z) == false)
                {
                    Label2.Visible = true;
                    Label2.Text = " Make sure to re-enter the password correctly... ";
                    Label2.Font.Bold = true;
                }
                else
                {

                    if (UserExist(X))
                    {
                        Label2.Visible = true;
                        Label2.Text = "User Name is taken, try another one...";
                        Label2.Font.Bold = true;
                    }
                    else
                    { 
                        if (PhoneExist(B))
                        {
                            Label2.Visible = true;
                            Label2.Text = "Phone number exists, try another one...";
                            Label2.Font.Bold = true;
                        }



                        else
                        {




                            Label2.Visible = false;
                            OleDbConnection v = new OleDbConnection();
                            v.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
                            v.Open();

                            string UserName = this.TextBox1.Text;
                            string PersonalName = this.TextBox2.Text;
                            string Password = this.TextBox3.Text;
                            string Question = this.DropDownList1.SelectedValue.ToString();
                            string Answer = this.TextBox5.Text;
                            string Phone = this.TextBox6.Text;



                            string sqlstring1 = "Insert into [Users]([User Name],[Personal Name],[Password],[Secret Question],[Answer],[Phone Number]) values ('";
                            sqlstring1 += UserName + "','" + PersonalName + "','" + Password + "','" + Question + "','" + Answer + "','" + Phone + "')";




                            OleDbCommand cmd = new OleDbCommand(sqlstring1, v);
                            cmd.ExecuteNonQuery();

                            v.Close();


                            Response.Redirect("~/MainPages/LogIn.aspx");

                        }
                    }
                   
                }
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Fill all fields";
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}