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
    public partial class Forgot : System.Web.UI.Page
    {
        public static bool RightSecret(string name, string qst, string ans)
        {

            string usersql1 = "select [Secret Question],[Answer] from [Users] where [User Name]='" + name + "'";
            OleDbConnection y = new OleDbConnection();
            y.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
            y.Open();

            OleDbDataAdapter daobj1 = new OleDbDataAdapter(usersql1, y);
            DataSet dsUser = new DataSet();
            daobj1.Fill(dsUser);
            DataTable dt = dsUser.Tables[0];
            y.Close();

            if (dt.Rows[0]["Secret Question"].ToString() == qst && dt.Rows[0]["Answer"].ToString() == ans)
                return true;
            else
                return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = (string)Session["UserName"];
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string qst = DropDownList1.SelectedValue.ToString();
            string ans = TextBox1.Text;
            string name = (string)Session["UserName"];
            if (RightSecret(name,qst , ans))
            {
                Response.Redirect("~/UsersPages/ChangePassword.aspx");
            }
            else
            {
                Label3.Visible = true;

            }
        }
    }
}