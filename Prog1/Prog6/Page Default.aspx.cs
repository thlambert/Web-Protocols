using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prog1.Prog6
{
    public partial class Page_Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLDataClass.getAllProducts();
            ProductGrid1.DataSource = SQLDataClass.tblProduct;
            ProductGrid1.DataBind();

        }

        protected void ProductGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ProductGrid1.PageIndex = e.NewPageIndex;
            ProductGrid1.DataBind();
        }
    }
}