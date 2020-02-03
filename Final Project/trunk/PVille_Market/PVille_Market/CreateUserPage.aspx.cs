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
    public partial class CreateUserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PvilleMarketConnectionString2"].ConnectionString);
                conn.Open();
                string checkUser = "Select count(*) From Users where UserName = '" + txtUsername.Text + "'";
                SqlCommand com = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists");
                }
                conn.Close();
            }
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PvilleMarketConnectionString2"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Users(UserName, Password, FullName, Email, PhoneNumber, Address)" +
                    " values (@uName, @uPass, @uName, @uEmail, @uPhone, @uAddress)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@uID", txtUsername.Text.Trim());
                com.Parameters.AddWithValue("@uPass", txtPassword.Text.Trim());
                com.Parameters.AddWithValue("@uName", txtFullName.Text.Trim());
                com.Parameters.AddWithValue("@uEmail", txtEmail.Text.Trim());
                com.Parameters.AddWithValue("@uPhone", txtPhoneNum.Text.Trim());
                com.Parameters.AddWithValue("@uAddress", txtAddress.Text.Trim());
                com.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("LoginPage.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}