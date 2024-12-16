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
    public partial class ManagerPage : System.Web.UI.Page
    {
        public static bool DExist(string name)

        {
            string usersql = "select * from [Devices] where [Name]='" + name + "'";
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
        public static bool TypeExist(string type)

        {
            string usersql = "select * from [Types] where [Name]='" + type + "'";
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
        public static bool BrandExist(string brand)

        {
            string usersql = "select * from [Brands] where [Name]='" + brand + "'";
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
            Label1.Text = (string)Session["ManagerName"];
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!=""&& TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" )
            {
                string name = TextBox1.Text;
                string type = TextBox2.Text;
                string brand = TextBox3.Text;
                int price = int.Parse(TextBox4.Text);
                int amount = int.Parse(TextBox5.Text);
                string pic = TextBox11.Text;

                if (DExist(name))
                {
                    Label6.Visible = true;
                    Label6.Text = "Product already exists";
                }
                else
                {
                    WebService add = new WebService();

                   

                    add.AddProduct(name, type, brand, price, amount, pic);

                    if(TypeExist(type)==false)
                    {
                        OleDbConnection m = ClassPage.GenerateCon("Store.mdb");
                        string sql = "insert into [Types] values('" + type + "')";
                        OleDbCommand cmd = new OleDbCommand(sql,m);
                        cmd.ExecuteNonQuery();
                        m.Close();
                    }
                    if(BrandExist(brand)==false)
                    {
                        OleDbConnection n = ClassPage.GenerateCon("Store.mdb");
                        string sql1 = "insert into [Brands] values('" + brand + "')";
                        OleDbCommand cmd1 = new OleDbCommand(sql1,n);
                        cmd1.ExecuteNonQuery();
                        n.Close();
                    }

                    Label6.Visible = true;
                    Label6.Text = "Product added successfully";
                }


            }
            else
            {
                Label6.Visible = true;
                Label6.Text = "Fill the fields";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox6.Text!=""&& TextBox7.Text!="")
            {
                string name1 = TextBox6.Text;
                int amount1  = int.Parse(TextBox7.Text);

                if(DExist(name1))
                {
                    WebService add1 = new WebService();



                    add1.AddOn(name1,amount1);

                    Label7.Visible = true;
                    Label7.Text = "Amount added successfully";
                }
                else
                {
                    Label7.Visible = true;
                    Label7.Text = "Product doesn't exist";
                }

            }
            else
            {
                Label7.Visible = true;
                Label7.Text = "Fill the fields";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(TextBox8.Text!=""&&TextBox9.Text!="")
            {
                string name2 = TextBox8.Text;
                int amount2 = int.Parse(TextBox9.Text);

                if(DExist(name2))
                {
                    WebService Remove = new WebService();



                    Remove.RemoveNum(name2, amount2);

                    Label8.Visible = true;
                    Label8.Text = "Amount removed successfully";

                }
                else
                {
                    Label8.Visible = true;
                    Label8.Text = " Product doesn't exist";
                }
            }
            else
            {
                Label8.Visible = true;
                Label8.Text = "Fill the fields";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox10.Text != "")
            {
                string name3 = TextBox10.Text;

                if(DExist(name3))
                {
                    WebService Remove1 = new WebService();



                    Remove1.RemoveProduct(name3);

                    Label9.Visible = true;
                    Label9.Text = "Product removed successfully";
                }
                else
                {
                    Label9.Visible = true;
                    Label9.Text = " Product doesn't exist";
                }
            }
            else
            {
                Label9.Visible = true;
                Label9.Text = "Fill the fields";
            }
        }
    }
}