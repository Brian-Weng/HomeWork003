using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HomeWorkWeek3
{
    public class DataBaseExecutor
    {

        public static DataTable ReadTestTable1DT()
        {
            string connectionString = "Data Source=localhost\\SQLExpress;Initial Catalog=CSharpLesson; Integrated Security=true";

            string queryString =
                $@" SELECT * FROM TestTable1
                WHERE NumberCol = @NumberCol
                ORDER BY ID DESC";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@NumberCol", 3);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();//從最上方1行1行下來將SQL Sever的資料流入reader

                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    reader.Close();
                    return dt;
                    /*foreach (DataRow dr in dt.Rows)
                    {
                        Console.WriteLine(
                                "\t{0}\t{1}\t{2}",
                                dr["ID"],
                                dr["Birthday"],
                                dr["Name"]
                            );
                    }
                    reader.Close();*/

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    return null;
                }
            }
        }

        public static DataTable ReadTestTable1OneRow(string id)
        {
            string connectionString = "Data Source=localhost\\SQLExpress;Initial Catalog=CSharpLesson;Integrated Security=true";
            string queryString =
                @"SELECT * FROM TestTable1
                  WHERE ID = @ID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@ID", id);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    reader.Close();
                    return dt;
                }
                catch (Exception ex)
                {
                    HttpContext.Current.Response.Write(ex);
                    return null;
                }
            }
        }

        public static DataTable ReadTestTableFewRows(int start, int end)
        {
            string connectionString = "Data Source=localhost\\SQLExpress;Initial Catalog=CSharpLesson; Integrated Security=true";

            string queryString =
                $@" SELECT * FROM (
                    SELECT *, ROW_NUMBER() OVER (ORDER BY ID) as ROWNUM
                    FROM TestTable1
                    ) a WHERE ROWNUM >= @start and ROWNUM <= @end;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@start", start);
                command.Parameters.AddWithValue("@end", end);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();//從最上方1行1行下來將SQL Sever的資料流入reader

                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    reader.Close();
                    return dt;
                    /*foreach (DataRow dr in dt.Rows)
                    {
                        Console.WriteLine(
                                "\t{0}\t{1}\t{2}",
                                dr["ID"],
                                dr["Birthday"],
                                dr["Name"]
                            );
                    }
                    reader.Close();*/

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    return null;
                }
            }
        }

        public static DataTable BuildDataTable()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ID", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Birthday", typeof(DateTime));
            dt.Columns["Birthday"].AllowDBNull = true;

            DateTime baseDate = new DateTime(2021, 1, 1);
            for (var i = 0; i < 50; i++)
            {
                DataRow dr = dt.NewRow();
                dr["ID"] = i;
                dr["Name"] = "UserName" + i;
                dr["Birthday"] = DBNull.Value;
                dt.Rows.Add(dr);
            }

            return dt;
        }

        public static void InsertTestTable(string id, string name, string bir, string Num)
        {
            string connectionString = "Data Source=localhost\\SQLExpress;Initial Catalog=CSharpLesson; Integrated Security=true";

            string queryString = $@"INSERT INTO TestTable1
                                        (ID, Name, Birthday, NumberCol)
                                    VALUES
                                        (@ID, @Name, @Birthday, @NumberCol)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@ID", id);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Birthday", bir);
                command.Parameters.AddWithValue("@NumberCol", Num);
                connection.Open();

                try
                {
                    int totalChangRows = command.ExecuteNonQuery();
                    Console.WriteLine("Total chang" + totalChangRows + " Rows.");
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }
        }

        public static void DeleteTestTable(string id)
        {
            string connectionString = "Data Source=localhost\\SQLExpress;Initial Catalog=CSharpLesson; Integrated Security=true";

            string queryString = $@"DELETE FROM TestTable1 
                                    WHERE ID=@ID";

            using (SqlConnection connection = new SqlConnection(connectionString)) //using 使用這個Database 同SQL中Using database 會自動回收記憶體
            {

                SqlCommand command = new SqlCommand(queryString, connection);  //command物件內含建構屬性1.SQL指令 2.Sever連接路徑
                command.Parameters.AddWithValue("@ID", id);

                connection.Open();

                try
                {
                    int totalChangRows = command.ExecuteNonQuery();
                    HttpContext.Current.Response.Write("Total chang" + totalChangRows + " Rows.");
                }
                catch (Exception ex)
                {
                    HttpContext.Current.Response.Write(ex);
                }
            }
        }

        public static void UpdateTestTable1(string id, string name, string bir)
        {
            string connectionString = "Data Source=localhots\\SQLExpress;Initial Catalog=CSharpLesson; Integrated Security=true";
            string queryString = $@"UPDATE TestTable1
                                   SET Name=@Name, Birthday=@Birthday
                                   WHERE ID=@ID";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@ID", id);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Birthday", bir);
                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    HttpContext.Current.Response.Write(ex);
                }
            }
        }
    }
}