using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_Shop
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = (string)Session["PersonalName"];
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

      
            if (TextBox1.Text == "")
                TextBox1.Text = "0";

            if (TextBox2.Text == "")
                TextBox2.Text = "9999999";








            Session["Type"] = DropDownList1.SelectedItem.ToString();

            Session["Brand"] = DropDownList2.SelectedValue.ToString();

            Session["MinPrice"] = TextBox1.Text;

            Session["MaxPrice"] = TextBox2.Text;



             Response.Redirect("~/UsersPages/Result.aspx");
        }
    }
}