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
   public partial class CheckoutPage : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PvilleMarketConnectionString2"].ConnectionString);
            conn.Open();
            string DeleteQuery = "Delete From Cart";
            SqlCommand com = new SqlCommand(DeleteQuery, conn);
            adapter.DeleteCommand = new SqlCommand(DeleteQuery, conn);
            adapter.DeleteCommand.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}