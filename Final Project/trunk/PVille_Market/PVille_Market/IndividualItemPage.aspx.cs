using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PVille_Market
{
   public partial class IndividualItemPage : System.Web.UI.Page
   {
      private string selectedProd
      {
         get
         {
            if (Session["selectedProd"] == null)
            {
               Session["selectedProd"] = "";
            }
            return (string)Session["selectedProd"];
         }
         set { Session["selectedProd"] = value; }
      }
      //private static System.Data.SqlClient.SqlDataAdapter prodAdapter;
      //private static SqlCommand prodCmd = new SqlCommand();
      //private static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PvilleMarketConnectionString2"].ConnectionString);
      //public static DataTable dataTable = new DataTable();
      protected void Page_Load(object sender, EventArgs e)
      {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["selectedProd"] != null)
            {
               selectedProd = (string)Session["selectedProd"];
            }
            SqlDataSource1.SelectCommand = "Select * from Listings where ProductName = '" + selectedProd + "'";
            //GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
         //getItem();
         txtDesc.Text = GridView1.Rows[0].Cells[5].Text;
         txtName.Text = GridView1.Rows[0].Cells[3].Text;
         txtPrice.Text = GridView1.Rows[0].Cells[1].Text;
         txtQuantity.Text = GridView1.Rows[0].Cells[4].Text;
         Image1.ImageUrl = GridView1.Rows[0].Cells[6].Text;
         GridView1.Visible = false;

      }

      protected void Button1_Click(object sender, EventArgs e)
      {

         String image = Image1.ImageUrl.ToString();
         SqlDataSource1.InsertCommand = "INSERT INTO Cart(ProductID, ProductName, ProductPrice, Quantity)" +
                     " values ('" + GridView1.Rows[0].Cells[0].Text + "', '" + GridView1.Rows[0].Cells[3].Text + "', " + GridView1.Rows[0].Cells[1].Text
                     + ", " + GridView1.Rows[0].Cells[4].Text + ")";
         lblAdd.Text = "Product added to cart!";
         SqlDataSource1.Insert();
      }

      //private void getItem()
      //{
      //    DataTable dataTable = new DataTable();
      //    //dataTable = 
      //    prodCmd.Connection = con;
      //    prodCmd.CommandType = CommandType.Text;
      //    prodCmd.CommandText = "Select * From Listings where ProductID = '" + selectedProd + "'";
      //    prodAdapter = new SqlDataAdapter(prodCmd);
      //    prodAdapter.FillSchema(dataTable, SchemaType.Source);
      //    txtName.Text = (from DataRow dr in dataTable.Rows
      //                    where (string)dr["ProductID"] == Session["selectedProd"]
      //                    select (string)dr["Name"]).FirstOrDefault();
      //}
   }
}