<%@ WebHandler Language="C#" Class="DemoAutoComplate" %>
using System;
using System.Data.SqlClient;
using System.Text;
using System.Web;

public class DemoAutoComplate : IHttpHandler
{
    #region IHttpHandler Members

    public void ProcessRequest(HttpContext context)
    {
        string prefixText = context.Request.QueryString["q"];
        string ConnectionString = @"Server =localhost;
           Initial Catalog=av8;User ID=sa;Password=123";
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select pname from Products where " +
                                  "pname like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                StringBuilder sb = new StringBuilder();
                conn.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        sb.Append(sdr["pname"])
                            .Append(Environment.NewLine);
                    }
                }
                conn.Close();
                context.Response.Write(sb.ToString());
            }
        }
    }

    public bool IsReusable
    {
        get { return false; }
    }

    #endregion
}