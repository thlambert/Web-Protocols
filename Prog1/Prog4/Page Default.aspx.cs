using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prog1.Prog4
{
    public partial class Page_Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLDataClass.getAllProducts();
            ProductGrid.DataSource = SQLDataClass.tblProduct;
            ProductGrid.DataBind();

        }

        protected void ProductGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ProductGrid.PageIndex = e.NewPageIndex;
            ProductGrid.DataBind();
        }
    }
}