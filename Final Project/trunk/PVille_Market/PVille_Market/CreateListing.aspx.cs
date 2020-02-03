using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PVille_Market
{

   public partial class CreateListing : System.Web.UI.Page
   {
      private Boolean flag
      {
         get
         {
            if (Session["flag"] == null)
            {
               Session["flag"] = false;
            }
            return (Boolean)Session["flag"];
         }
         set
         {
            Session["flag"] = value;
         }
      }
      

      protected void Page_Load(object sender, EventArgs e)
      {
          ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
         lblMsg.Text = "";
      }

      protected void btnUpload_Click(object sender, EventArgs e)
      {
         lblFileExtension.Text = "";
         string uploadFolder = Request.PhysicalApplicationPath + "Images\\";
         if (fuPicture.HasFile)
         {
            string extension = Path.GetExtension(fuPicture.PostedFile.FileName);
            if (extension.ToLower() == ".jfif" || extension.ToLower() == ".png")
            {

               fuPicture.SaveAs(uploadFolder + fuPicture.FileName);
               lblFileExtension.Text = "File uploaded successfully: " + fuPicture.PostedFile.FileName;
               string imageSrc = "~/Images/" + fuPicture.PostedFile.FileName;
               Image1.ImageUrl = imageSrc;
               Image1.BorderWidth = 2;
               Image1.BorderColor = System.Drawing.Color.SeaGreen;
               flag = true;
            }
            else
            {
               lblFileExtension.Text = "This file extension not permitted. Upload a .jfif or .png";
            }
         }
         else
         {
            lblFileExtension.Text = "Please select a file.";
         }
      }

      protected void btnSubmit_Click(object sender, EventArgs e)
      {
         if(flag == true)
         {
            try
            {
               String id = generateID();
               String image = Image1.ImageUrl.ToString();
               SqlDataSource1.InsertCommand = "INSERT INTO Listings(ProductID, Price, UserID, ProductName, Quantity, Description, Image)" +
                           " values ('" + id + "', " + txtPrice.Text.Trim() + ", '" + "USER" + "', '" + txtProductName.Text.Trim()
                           + "', " + txtQuantity.Text.Trim() + ", '" + txtDescription.Text.Trim() + "', '" + image + "')";
               lblMsg.Text = "Product added successfully!";
               SqlDataSource1.Insert();
            }
            //   conn.Open();
            //   SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PvilleMarketConnectionString"].ConnectionString);
            //   string addlisting = "insert into Listings(ProductID, Price, UserID, ProductName, Quantity, Description, Image)" +
            //       " values (@ID, @Price, @uID, @ProductName, @Quantity, @Description, @ImageURL)";
            //   SqlCommand com = new SqlCommand(addlisting, conn);
            //   String image = Image1.ImageUrl.ToString();
            //   com.Parameters.AddWithValue("@ID", id.ToString());
            //   com.Parameters.AddWithValue("@Price", txtPrice.Text.Trim());
            //   com.Parameters.AddWithValue("@uID", "USER");
            //   com.Parameters.AddWithValue("@ProductName", txtProductName.Text.Trim());
            //   com.Parameters.AddWithValue("@Quantity", txtQuantity.Text.Trim());
            //   com.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
            //   com.Parameters.AddWithValue("@ImageURL", image.ToString());
            //   int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //   if (temp == 1)
            //   {
            //      Response.Write("Product added successfully.");
            //   }
            //   else
            //   {
            //      Response.Write("Product add unsuccessful");
            //   }
            //   conn.Close();
            //}
            catch (Exception ex)
            {
               lblFileExtension.Text = ex.Message;
            }

         }
      }

      public string generateID()
      {
         return Guid.NewGuid().ToString("N");
      }

      protected void btnReset_Click(object sender, EventArgs e)
      {
         txtDescription.Text = "";
         txtPrice.Text = "";
         txtProductName.Text = "";
         txtQuantity.Text = "";
         fuPicture.Controls.Clear();
         lblFileExtension.Text = "";
      }
   }
}