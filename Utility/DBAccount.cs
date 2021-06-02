using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HomeWorkWeek3.Utility
{
    public class DBAccount
    {
        public static DataTable GetUserAccount(string acc)
        {
            string connectionString = "Data Source=localhost\\SQLExpress;Initial Catalog=CSharpLesson;Integrated Security=true";
            string queryString = @"SELECT * FROM UserAccount
                                   WHERE Account = @Account";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@Account", acc);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    reader.Close();
                    return dt;
                }
                catch(Exception ex)
                {
                    return null;
                }
            }
        }
       
    }
}