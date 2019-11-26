using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Prog1.Prog6
{
    public partial class Login : System.Web.UI.Page
    {
        private const string ConStr = "Data Source=Alpha;" +
            "Initial Catalog = UWPCS3870; Persist Security Info=True;" +
            "User ID = MSCS; Password=MasterInCS";
        private static System.Data.SqlClient.SqlDataAdapter prodAdapter;
        private static System.Data.SqlClient.SqlCommand prodCmd = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        public static System.Data.DataTable tblProduct = new System.Data.DataTable("Shopping");
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                SQLDataClass.DeleteShopping();

            }
            catch(Exception ex)
            {
                //Response.Write(ex.Message);
            }
            
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