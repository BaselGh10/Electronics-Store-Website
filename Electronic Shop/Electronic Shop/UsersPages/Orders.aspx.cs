using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_Shop
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count == 0)
                Label3.Visible = true;
            else
            {
                int t = 0;
                foreach (GridViewRow row in GridView1.Rows)
                {
                    string OP = row.Cells[5].Text;
                    t += int.Parse(OP);
                }
                Label4.Visible = true;
                Label5.Visible = true;
                Label5.Text = t.ToString();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Name = GridView1.SelectedRow.Cells[1].Text;
            string Amount = GridView1.SelectedRow.Cells[4].Text;
            string Date = GridView1.SelectedRow.Cells[6].Text;
            string For = (string)Session["UserName"];

            string sql = "Delete from [Orders] where [Name]= '" + Name + "' And [For]='" + For + "' And [Amount]='" + Amount+ "' And [Date]= '" + Date + "'";

            ClassPage.ChangeTable(sql, "Store.mdb");

            Response.Redirect("~/UsersPages/Orders.aspx");
        }
    }
}