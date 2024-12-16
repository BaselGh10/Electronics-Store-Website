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
    public partial class ChangePassword : System.Web.UI.Page
    {
        public static void NewPass(string pass, string user)
        {
            string sql = "Update [Users] Set [Password]='" + pass + "' where [User Name] = '" + user + "'";
            ClassPage.ChangeTable(sql, "Store.mdb");

        }
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string pass1 = TextBox1.Text;
            string pass2 = TextBox2.Text;
            string Name = (string)Session["UserName"];
            if (pass1 != "")
            {
                if (ConfirmPass(pass1, pass2))
                {

                    NewPass(pass1, Name);


                    Response.Redirect("~/MainPages/LogIn.aspx");

                }
                else
                    Label2.Visible = true;
                    Label2.Text = "Enter and re-enter the password correctly";
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Fill the fields";
            }
        }
    }
}