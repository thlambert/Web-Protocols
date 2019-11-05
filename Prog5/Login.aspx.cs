using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Prog1.Prog5
{
    public partial class Login : System.Web.UI.Page
    {
        private static System.Data.SqlClient.SqlConnection ud;
        SQLDataClass sd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UWPCS3870ConnectionString"].ConnectionString);
                conn.Open();
                string checklogin = "select count(*) from UserInfo where UserName = '"
                    + txtUN.Text + "' and Password = '" + txtPW.Text + "' ";
                SqlCommand com1 = new SqlCommand(checklogin, conn);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    Response.Write("Successfully logged in!");
                    //sd. = txtUN.Text;
                    Response.Redirect("Page Default.aspx");

                }
                else
                {
                    Response.Write("Username or password incorrect!");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }
    }
}