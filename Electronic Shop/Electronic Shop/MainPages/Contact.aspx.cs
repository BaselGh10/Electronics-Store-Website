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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if(TextBox1.Text!="" && TextBox2.Text!="" && TextBox3.Text!=""&& TextBox4.Text!="")
            {


                OleDbConnection con = new OleDbConnection();
                con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
                con.Open();

                string name = this.TextBox1.Text;
                string email = this.TextBox2.Text;
                string sub = this.TextBox3.Text;
                string msg = this.TextBox4.Text;

                string sql = "Insert into [Messages]([Name],[E-Mail],[Subject],[Message],[Date]) values ('";
                sql += name + "','" + email + "','" + sub + "','" + msg + "','" + DateTime.Now.ToString() + "')";



                OleDbCommand cmd = new OleDbCommand(sql, con);
                cmd.ExecuteNonQuery();

                con.Close();

                TextBox3.Text = "";
                TextBox4.Text = "";
                Label2.Visible = true;
                Label2.Text = "Thanks! we will reply soon...";
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Fill all fields";
            }
        }
    }
    
}