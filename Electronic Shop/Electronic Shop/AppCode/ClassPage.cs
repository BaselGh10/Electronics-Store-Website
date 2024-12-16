using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace Electronic_Shop
{
    public class ClassPage
    {

        public static OleDbConnection GenerateCon(string FileName)
        {
            OleDbConnection x = new OleDbConnection();
            x.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + FileName);
            x.Open();
            return x;
        }

        public static void ChangeTable(string sql, string FileName)
        {
            OleDbConnection x = GenerateCon(FileName);
            OleDbCommand cmd = new OleDbCommand(sql, x);
            cmd.ExecuteNonQuery();
            x.Close();
        }

    }
}
