using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prog1.Prog4
{

    
    public partial class Page_Updating : System.Web.UI.Page
    {
        private const string ConStr = "Data Source=Alpha;" +
            "Initial Catalog = UWPCS3870; Persist Security Info=True;" +
            "User ID = MSCS; Password=MasterInCS";
        private static System.Data.SqlClient.SqlDataAdapter prodAdapter;
        private static System.Data.SqlClient.SqlCommand prodCmd = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        public static System.Data.DataTable tblProduct = new System.Data.DataTable("Product");
        protected void Page_Load(object sender, EventArgs e)
        {
            //SQLDataClass.getAllProducts();
            //dtlProduct.DataSource = SQLDataClass.tblProduct;
            //dtlProduct.DataBind();
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            dtlProduct.PageIndex = e.NewPageIndex;
            dtlProduct.DataBind();
        }

        protected void dtlProduct_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {

        }

        protected void dtlProduct_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {

        }

        protected void dtlProduct_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            //prodCmd.CommandText = "Update Product "
            //    + "Set ProductName = '" + newName + "', "
            //    + "UnitPrice = " + newPrice + ", "
            //    + "Description = '" + newDesc + "' "
            //    + "Where ProductID = '" + theID + "'";
            //try
            //{
            //    con.Open();
            //    prodCmd.ExecuteNonQuery();
            //}
            //catch (Exception ex)
            //{
            //    throw new Exception(ex.Message);
            //}
            //finally
            //{
            //    con.Close();
            //}

            //int idd = Convert.ToInt32(dtlProduct.Rows[0].Cells[1].Text);
            //TextBox name = dtlProduct.Rows[1].Cells[1].Controls[0] as TextBox;
            //TextBox city = dtlProduct.Rows[2].Cells[1].Controls[0] as TextBox;

            //SqlDataAdapter SQLAdapter = new SqlDataAdapter("update UserMst set name = '" + name.Text + "‘, city='" +city.Text + "‘ where id =" + idd +"”, SQLConn);
            //DataTable DT = new DataTable();
            //SQLAdapter.Fill(DT);

            //DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            //BindDetailsView();
        }
    }
}