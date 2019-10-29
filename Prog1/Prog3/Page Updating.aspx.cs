using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prog1.Prog3
{

    
    public partial class Page_Updating : System.Web.UI.Page
    {
        private String[] dontDelete = {"p101", "p103", "p107", "p109", "p201"};
        protected void Page_Load(object sender, EventArgs e)
        {
            txtMsg.Text = "";
            if (!IsPostBack)
            {
                Session_Start(sender, e);
                DisplayRow((int)Session["Prog3_Index"]);
            }
        }

        void Session_Start(object sender, EventArgs e)
        {

            Session["Prog2_ProductID"] = "";
            Session["Prog3_Index"] = 0;
            Session["Prog3_ID"] = "";
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int index = (int)Session["Prog3_Index"] + 1;
            if (index > SQLDataClass.tblProduct.Rows.Count - 1)
            {
                index = SQLDataClass.tblProduct.Rows.Count - 1;
            }
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            int index = (int)Session["Prog3_Index"] - 1;
            if (index < 0)
                index = 0;
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        private void EnableDisableButtons()
        {
            btnFirst.Enabled = !btnFirst.Enabled;
            btnLast.Enabled = !btnLast.Enabled;
            btnNext.Enabled = !btnNext.Enabled;
            btnPrevious.Enabled = !btnPrevious.Enabled;
            btnUpdate.Enabled = !btnUpdate.Enabled;
        }

        private void DisplayRow(int index)
        {
            System.Data.DataRow row = SQLDataClass.tblProduct.Rows[index];
            txtID.Text = row[0].ToString();
            txtName.Text = row[1].ToString();
            txtPrice.Text = string.Format("{0:C}", row[2]);
            txtDesc.Text = row[3].ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string theID = txtID.Text;
                string newName = txtName.Text;
                double newPrice = double.Parse(txtPrice.Text.Replace("$", ""));
                string newDesc = txtDesc.Text;
                SQLDataClass.UpdateProduct(theID, newName, newPrice, newDesc);
                txtMsg.Text = "Record updated.";
                SQLDataClass.getAllProducts();
            }
            catch (Exception ex)
            {
                txtMsg.Text = "Product Not Updated: " + ex.Message;
            }
        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            int index = 0;
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            int index = SQLDataClass.tblProduct.Rows.Count - 1;
            Session["Prog3_Index"] = index;
            DisplayRow(index);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if(btnDelete.Text.Equals("Delete"))
            {
                bool delete = false;
                for (int i = 0; i < dontDelete.Length; i++)
                {
                    if (txtID.Text.Equals(dontDelete[i]))
                    {
                        delete = true;
                    }

                }
                if (!delete)
                {
                    SQLDataClass.DeleteProduct(txtID.Text);
                    txtMsg.Text = "Record deleted.";
                }
                else
                {
                    txtMsg.Text = "This record can't be deleted.";
                }
            }
            else
            {
                btnDelete.Text = "Delete";
                btnNew.Text = "New";
                DisplayRow((int)Session["Prog3_Index"]);
                EnableDisableButtons();
            }
            
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            if(btnNew.Text.Equals("New"))
            {
                EnableDisableButtons();
                btnNew.Text = "Save New";
                btnDelete.Text = "Cancel";
                txtDesc.Text = "";
                txtID.Text = "";
                txtName.Text = "";
                txtPrice.Text = "";
            }
            else
            {
                try
                {
                    if (SQLDataClass.AddProduct(txtID.Text, txtName.Text, Convert.ToInt32(txtPrice.Text), txtDesc.Text))
                    {
                        txtMsg.Text = "Product added";
                        btnNew.Text = "New";
                        EnableDisableButtons();
                        //btnLast_Click(sender, e);
                        SQLDataClass.getAllProducts();
                    }
                    else
                    {
                        txtMsg.Text = "ProductID already exists";
                    }
                }
                catch (Exception ex)
                {
                    txtMsg.Text = ex.Message;
                }
            }
            
        }
    }
}