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
    public partial class RemoveManager : System.Web.UI.Page
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            if (ManagerExist(name))
            {



                WebService Remove = new WebService();

                
                Remove.RemoveManager(name);

                
                Label1.Visible = true;
                Label1.Text = "Manager removed";
            }

            else
            {
                Label1.Visible = true;
                Label1.Text = "Manager doesn't exist";
               
            }
        }
    }
}