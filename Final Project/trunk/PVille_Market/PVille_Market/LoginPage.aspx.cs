using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PVille_Market
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
               SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PvilleMarketConnectionString2"].ConnectionString);
               conn.Open();
               string checkUser = "Select count(*) From Users where Username = '" + txtUsername.Text + "' and Password = '" + txtPassword.Text + "'";
               SqlCommand com = new SqlCommand(checkUser, conn);
               int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
               if (temp == 1)
               {
                  Response.Redirect("HomePage.aspx");
               }
               else
               {
                  Response.Write("Username or Password incorrect");
               }
               conn.Close();
            }
            catch(Exception ex)
            {
               Response.Write(ex.Message);
            }
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateUserPage.aspx");
        }
    }
}