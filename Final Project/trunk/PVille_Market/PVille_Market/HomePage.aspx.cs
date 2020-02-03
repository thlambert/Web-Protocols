using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PVille_Market
{
    public partial class WebForm5 : System.Web.UI.Page
    {
      //string selectedProd;
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
      protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void gridViewProd_SelectedIndexChanged(object sender, EventArgs e)
        {
         selectedProd = gridViewProd.SelectedRow.Cells[1].Text;// + "," +
            //    gridViewProd.SelectedRow.Cells[1].Text + "," +
            //    gridViewProd.SelectedRow.Cells[2].Text + "," +
            //    gridViewProd.SelectedRow.Cells[3].Text + "," +
            //    gridViewProd.SelectedRow.Cells[4].Text + "," +
            //    gridViewProd.SelectedRow.Cells[5].Text + "," +
            //    gridViewProd.SelectedRow.Cells[6].Text;
            Response.Redirect("IndividualItemPage.aspx");
        }
    }
}