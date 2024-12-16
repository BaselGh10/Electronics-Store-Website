using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_Shop
{
    public partial class Result1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count == 0)
            {
                Label1.Visible = true;
            }

            string Type = (string)Session["Type"];
            string Brand = (string)Session["Brand"];
            string MaxPrice = (string)Session["MaxPrice"];
            string MinPrice = (string)Session["MinPrice"];



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                Session["Name"] = GridView1.SelectedRow.Cells[1].Text;
                Session["Type"] = GridView1.SelectedRow.Cells[2].Text;
                Session["Brand"] = GridView1.SelectedRow.Cells[3].Text;
                Session["Price"] = GridView1.SelectedRow.Cells[4].Text;
                Session["Stock"] = GridView1.SelectedRow.Cells[5].Text;





                Response.Redirect("~/UsersPages/ViewDevice.aspx");
            }
        }
    }
}