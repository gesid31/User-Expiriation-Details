using System;
using Newtonsoft.Json;//installed new reference
using System.Data;
using System.Data.SqlClient;



namespace Proj
{
    public class DB
    {
        readonly string _connectionString;
        public DB()
        {
            _connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDemo"].ConnectionString;
        }
        /// <summary>
        /// Connects to the database and attempts to apply 
        /// all add.
        /// </summary>
        public bool SaveJsonTextToDb(string name, string favClr, string expireDate)
        {
            var saved = false;
            try
            {

                User us = new User();
                us.UserName = name;
                us.FavColor = favClr;
                us.ExpirationDate = expireDate;
                string output = JsonConvert.SerializeObject(us);
                using (SqlConnection connection = new SqlConnection(_connectionString))
                {
                    var command = new SqlCommand();
                    command.Connection = connection;
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "SaveJsonText";
                    //connection.Open();
                    command.Parameters.Add("@jsonText", SqlDbType.NVarChar).Value = output;
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                saved = true;
            }
            catch (Exception e)
            {
                throw;
            }
            return saved;
        }
    }
}