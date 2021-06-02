using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace HomeWorkWeek3.Utility
{
    public class DBLoginHelper
    {
        private const string _session_Key = "IsLogined";
        private const string _session_Account = "Account";

        public static bool HasLogined()
        {
            bool? var = HttpContext.Current.Session[_session_Key] as bool?;
            if (var.HasValue && var.Value)
                return true;
            else
                return false;
        }

        public static bool TryLogin(string acc, string pwd)
        {
            if (HasLogined())
                return true;

            DataTable dt = DBAccount.GetUserAccount(acc);
            if (dt == null || dt.Rows.Count == 0)
                return false;

            string dbName = dt.Rows[0].Field<string>("Name");
            string dbPwd = dt.Rows[0].Field<string>("Pwd");
            bool isPassword = string.Compare(dbPwd, pwd) == 0;

            if (isPassword)
            {
                HttpContext.Current.Session[_session_Account] = dbName;
                HttpContext.Current.Session[_session_Key] = true;
                return true;
            }
            else
                return false;
        }

        public static void Login()
        {
            if (!HasLogined())
                return;

            HttpContext.Current.Session.Remove(_session_Account);
            HttpContext.Current.Session.Remove(_session_Key);
        }
        public static string GetUserInfo()
        {
            return HttpContext.Current.Session[_session_Account] as string;
        }

    }
}