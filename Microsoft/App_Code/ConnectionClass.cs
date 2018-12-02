using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace Microsoft.App_Code
{
    public static class ConnectionClass
    {
        private static SqlConnection conn;
        private static SqlCommand command;

        static ConnectionClass()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["microsoftConnection"].ToString();
            conn = new SqlConnection(connectionString);
            command = new SqlCommand("", conn);

        }

        public static Users LoginUser(string login, string password)
        {
            string query = string.Format("SELECT COUNT(*) FROM Microsoft.dbo.users WHERE name = '{0}'", login);
            command.CommandText = query;

            try
            {
                conn.Open();
                int amountOfUsers = (int)command.ExecuteScalar();
                 
                if(amountOfUsers == 1)
                {
                    //User Exists
                    query = string.Format("SELECT password FROM users where name = '{0}'", login);
                    command.CommandText = query;
                    string dbPassword = command.ExecuteScalar().ToString();

                    if(dbPassword == password)
                    {
                        //Password Match
                        query = string.Format("SELECT email,user_type FROM users WHERE name = '{0}'", login);
                        command.CommandText = query;

                        SqlDataReader reader = command.ExecuteReader();
                        Users user = null;

                        while(reader.Read())
                        {
                            string email = reader.GetString(0);
                            string type = reader.GetString(1);

                            user = new Users(login, password, email, type);
                        }
                        return user;
                    }
                    else
                    {
                        //Password do not match
                        return null;
                    }
                }
                else
                {
                    //User Exits
                    return null;
            
                }
            }
            finally
            {
                conn.Close(); 
            }

        }

        public static string RegisterUser(Users user)
        {
            string query = string.Format("SELECT COUNT (*) FROM users WHERE name='{0}'", user.name);
            command.CommandText = query;

            try
            {
                conn.Open();
                int amountOfUsers = (int)command.ExecuteScalar();
                if (amountOfUsers < 1) //User doesnot exist can create a new one
                {
                    query = string.Format("INSERT into users VALUES ( '{0}','{1}','{2}','{3}' )", user.name, user.email, user.password, user.user_type);
                    command.CommandText = query;
                    command.ExecuteNonQuery();
                    return "User Registered";
                }
                else
                {
                    return "User with this name already exists";
                }
            }
            finally
            {
                conn.Close();
            }
        }
    }


}

