using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prog1.Prog2
{
    public partial class OrderingProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
        }

        protected void btnCompute_Click(object sender, EventArgs e)
        {
            
            double price = double.Parse(txtPrice.Text);
            double quantity = double.Parse(txtQuantity.Text);
            double subtotal = price * quantity;
            double tax = subtotal * .055;
            double grandtot = subtotal + tax;
            txtSubtotal.Text = string.Format("{0:C}", subtotal);
            txtGrandTotal.Text = string.Format("{0:C}", grandtot);
            txtTax.Text = string.Format("{0:C}", tax);

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtGrandTotal.Text = "";
            txtPrice.Text = "";
            txtProductID.Text = "";
            txtQuantity.Text = "";
            txtSubtotal.Text = "";
            txtTax.Text = "";
        }
    }
}