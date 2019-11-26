using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Prog1.Prog5
{
    public class SQLDataClass
    {
        private const string ConStr = "Data Source=Alpha;" +
            "Initial Catalog = UWPCS3870; Persist Security Info=True;" +
            "User ID = MSCS; Password=MasterInCS";
        private static System.Data.SqlClient.SqlDataAdapter prodAdapter;
        private static System.Data.SqlClient.SqlCommand prodCmd = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        private static  String ud;
        public static System.Data.DataTable tblProduct = new System.Data.DataTable("Product");

        private static System.Data.SqlClient.SqlDataAdapter prodAdapter1;
        private static System.Data.SqlClient.SqlCommand prodCmd1 = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con1 = new System.Data.SqlClient.SqlConnection();
        public static System.Data.DataTable tblProduct1 = new System.Data.DataTable("Shopping");

        public static void setud(String Newud)
        {
            ud = Newud;
        }
        public static String getud()
        {
            return ud;
        }
        public static void setupProdAdapter()
        {
            con.ConnectionString = ConStr;
            prodCmd.Connection = con;
            prodCmd.CommandType = System.Data.CommandType.Text;
            prodCmd.CommandText = "Select * from Product order by ProductID";
            prodAdapter = new System.Data.SqlClient.SqlDataAdapter(prodCmd);
            prodAdapter.FillSchema(tblProduct, System.Data.SchemaType.Source);
        }

        public static void setupProdAdapter1()
        {
            con1.ConnectionString = ConStr;
            prodCmd1.Connection = con1;
            prodCmd1.CommandType = System.Data.CommandType.Text;
            prodCmd1.CommandText = "Select * from Shopping order by ProductID";
            prodAdapter1 = new System.Data.SqlClient.SqlDataAdapter(prodCmd1);
            prodAdapter1.FillSchema(tblProduct1, System.Data.SchemaType.Source);
        }

        public void Session_Start()
        {

        }

        public static void getAllProducts()
        {
            if (prodAdapter == null)
            {
                setupProdAdapter();
            }
            prodCmd.CommandText = "Select * from Product order by ProductID";
            try
            {
                if (!(tblProduct == null))
                    tblProduct.Clear();
                prodAdapter.Fill(tblProduct);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
            }
        }

        public static void getAllProducts1()
        {
            if (prodAdapter1 == null)
            {
                setupProdAdapter1();
            }
            prodCmd1.CommandText = "Select * from Shopping order by ProductID";
            try
            {
                if (!(tblProduct1 == null))
                    tblProduct1.Clear();
                prodAdapter1.Fill(tblProduct1);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con1.Close();
            }
        }

        void Application_Start(object sender, EventArgs e)
        {
            SQLDataClass.setupProdAdapter();
        }

        public static void UpdateProduct(string theID, string newName, double newPrice, string newDesc)
        {
            prodCmd.CommandText = "Update Product "
                + "Set ProductName = '" + newName + "', "
                + "UnitPrice = " + newPrice + ", "
                + "Description = '" + newDesc + "' "
                + "Where ProductID = '" + theID + "'";
            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void UpdateProduct1(string theID, string newName, double newPrice, int newQuantity, int newCost)
        {
            prodCmd.CommandText = "Update Shopping "
                + "Set ProductName = '" + newName + "', "
                + "UnitPrice = " + newPrice + ", "
                + "Quantity = '" + newQuantity + "' "
                + "Cost = '" + newCost + "' "
                + "Where ProductID = '" + theID + "'";
            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void DeleteProduct(string theID)
        {
            prodCmd.CommandText = "Delete From Product "
                + "Where ProductID = '" + theID + "'";
            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void DeleteShopping()
        {
            prodCmd.CommandText = "Delete * From Shopping";
            try
            {
                con1.Open();
                prodCmd1.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con1.Close();
            }
        }

            public static void DeleteProduct1(string theID)
        {
            prodCmd.CommandText = "Delete From Shopping "
                + "Where ProductID = '" + theID + "'";
            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static bool AddProduct(string ID, string Name, int Price, string Desc)
        {
            try
            {
                con.Open();
                string checkuser = "select count(*) from Product where ProductID = '" + ID + "'";
                SqlCommand com1 = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    con.Close();
                    return false;
                }
                else
                {
                    string insertQuery = "INSERT INTO Product(ProductID, ProductName, UnitPrice, Description)" +
                    " values (@keyID, @Uname, @Price, @Desc)";
                    SqlCommand com = new SqlCommand(insertQuery, con);
                    com.Parameters.AddWithValue("@keyID", ID);
                    com.Parameters.AddWithValue("@Uname", Name);
                    com.Parameters.AddWithValue("@Price", Price);
                    com.Parameters.AddWithValue("@Desc", Desc);
                    try
                    {
                        com.ExecuteNonQuery();
                        con.Close();
                    }
                    catch (Exception ex)
                    {

                    }
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            
        }

        public static bool AddProduct1(string ID, string Name, int Quantity, int UnitPrice, int Cost)
        {
            try
            {
                con.Open();
                string checkuser = "select count(*) from Product where ProductID = '" + ID + "'";
                SqlCommand com1 = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    con.Close();
                    return false;
                }
                else
                {
                    string insertQuery = "INSERT INTO Shopping(ProductID, ProductName, Quantity, UnitPrice, Cost)" +
                    " values (@keyID, @Uname, @Quant, @UPrice, @Cost)";
                    SqlCommand com = new SqlCommand(insertQuery, con);
                    com.Parameters.AddWithValue("@keyID", ID);
                    com.Parameters.AddWithValue("@Uname", Name);
                    com.Parameters.AddWithValue("@Quant", Quantity);
                    com.Parameters.AddWithValue("@UPRice", UnitPrice);
                    com.Parameters.AddWithValue("@Cost", Cost);
                    try
                    {
                        com.ExecuteNonQuery();
                        con.Close();
                    }
                    catch (Exception ex)
                    {

                    }
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public static bool checkID(string ID)
        {
            try
            {
                con.Open();
                string checkuser = "select count(*) from Product where ProductID = '" + ID + "'";
                SqlCommand com1 = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    con.Close();
                    return true;
                }
                else
                {
                    con.Close();
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }
            
    }

}