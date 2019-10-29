using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prog1.Prog4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtChange(object sender, EventArgs e)
        {
            if(SQLDataClass.checkID(txtID.Text))
            {
                for(int i = 0; i < SQLDataClass.tblProduct.Rows.Count; i++)
                {
                    System.Data.DataRow row = SQLDataClass.tblProduct.Rows[i];
                    String temp1 = row[0].ToString();
                    String temp2 = row[1].ToString();
                    String temp3 = row[2].ToString();
                    if (txtID.Text.Trim().Equals(row[0].ToString().Trim()))
                    {
                        txtID.Text = row[0].ToString();
                        txtName.Text = row[1].ToString();
                        txtPrice.Text = row[2].ToString();
                    }
                }
            }
        }

        protected void btnCalculate(object sender, EventArgs e)
        {

            try
            {
                
                double price =  double.Parse(txtPrice.Text.ToString());
                double quantity = double.Parse(txtQuantity.Text.ToString());
                double subtotal = price * quantity;
                double tax = subtotal * .055;
                double grandtot = subtotal + tax;
                txtSubTot.Text = string.Format("{0:C}", subtotal);
                txtGrandTot.Text = string.Format("{0:C}", grandtot);
                txtTax.Text = string.Format("{0:C}", tax);
                txtPrice.Text = string.Format("{0:C}", txtPrice.Text);
            }
            catch(Exception ex)
            {
                
            }
        }

        protected void btnReset1(object sender, EventArgs e)
        {
            txtGrandTot.Text = "";
            txtID.Text = "";
            txtName.Text = "";
            txtPrice.Text = "";
            txtQuantity.Text = "";
            txtSubTot.Text = "";
            txtTax.Text = "";
        }
    }
}