using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PVille_Market
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PvilleMarketConnectionString"].ConnectionString);
            conn.Open();
            string DeleteQuery = "Delete From ShoppingBag";
            SqlCommand com = new SqlCommand(DeleteQuery, conn);
            adapter.DeleteCommand = new SqlCommand(DeleteQuery, conn);
            adapter.DeleteCommand.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/HomePage.aspx");

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UWPCS3870"].ConnectionString);
            conn.Open();
            string getTotal = "Select Quantity from Cart";


        }
    }
}