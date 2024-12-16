using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.OleDb;

namespace Electronic_Shop
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        public void AddProduct(string name, string type,string brand,int price , int amount, string pic)
        {
            OleDbConnection x = ClassPage.GenerateCon("Store.mdb");


            string sql = "insert into [Devices] values('" + name + "','" + type + "','" + brand + "'," + price + "," + amount + ",'"+ pic +"')";

            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }

        [WebMethod]
        public void AddOn(string name, int amount)
        {
            

            string usersql = "select [Stock] from [Devices] where [Name]='" + name + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
            x.Open();

            OleDbDataAdapter daobj = new OleDbDataAdapter(usersql, x);
            DataSet dsUser = new DataSet();
            daobj.Fill(dsUser);
            DataTable dt1 = dsUser.Tables[0];
            

            int a = int.Parse(dt1.Rows[0]["Stock"].ToString());
            int c = a + amount;


            string sql = "Update [Devices] Set [Stock]= " + c + " where [Name] ='" + name + "'";

            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }

        [WebMethod]
        public void RemoveNum(string name, int amount)
        {
            string usersql = "select [Stock] from [Devices] where [Name]='" + name + "'";
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + "Store.mdb");
            x.Open();

            OleDbDataAdapter daobj = new OleDbDataAdapter(usersql, x);
            DataSet dsUser = new DataSet();
            daobj.Fill(dsUser);
            DataTable dt1 = dsUser.Tables[0];
            

            int a = int.Parse(dt1.Rows[0]["Stock"].ToString());
            int c = a - amount;


            string sql = "Update [Devices] Set [Stock]= " + c + " where [Name] ='" + name + "'";

            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }
        
        [WebMethod]
        public void RemoveProduct(string name)
        {
            OleDbConnection x = ClassPage.GenerateCon("Store.mdb");


            string sql = "Delete from [Devices] where [Name]= '" + name + "'";

            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }
        [WebMethod]
        public void AddManager(string name, string password)
        {
            OleDbConnection x = ClassPage.GenerateCon("Store.mdb");


            string sql = "insert into [Managers] values('" + name + "','" + password + "')";

            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }
        [WebMethod]
        public void RemoveManager(string name)
        {
            OleDbConnection x = ClassPage.GenerateCon("Store.mdb");


            string sql = "Delete from [Managers] where [Manager Name]= '" + name + "'";

            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }

    }
}
