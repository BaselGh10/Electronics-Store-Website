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
    public partial class Buy : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string stock = (string)Session["Stock"];
            int x = int.Parse(stock);

            string name = (string)Session["Name"];
            string type = (string)Session["Type"];
            string brand = (string)Session["Brand"];
            string price = (string)Session["Price"];
            int p = int.Parse(price);
            string amount = (string)Session["Amount"];
            int z = int.Parse(amount);
            string For = (string)Session["UserName"];
            string phone = (string)Session["Phone"];

            int c = x - z;

            int total = z * p;
            string t = total.ToString();

            if (x >= z)
            {

                string sqlstring1 = "Insert into [Orders]([Name],[Type],[Brand],[For],[Phone],[Amount],[Order Price],[Date]) values ('";
                sqlstring1 += name + "','" + type + "','" + brand + "','" + For + "','" + phone + "','" + amount + "','"+t+"','" + DateTime.Now.ToString() +"')";
                ClassPage.ChangeTable(sqlstring1, "Store.mdb");

                string sql = "Update [Devices] Set [Stock]= " + c + " where [Name] ='" + name + "'";
                ClassPage.ChangeTable(sql, "Store.mdb");


                Session["Stock"] = c.ToString();


                Response.Redirect("~/UsersPages/Orders.aspx");

            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "We didn't find this amount of the product...";
            }







        }
    }
}