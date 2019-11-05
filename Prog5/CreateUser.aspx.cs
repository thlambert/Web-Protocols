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
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UWPCS3870ConnectionString"].ConnectionString);
                conn.Open();
                //string checkuser = "select count(*) from User where UserName = '" + txtUN.Text + "' ";
                //SqlCommand com1 = new SqlCommand(checkuser, conn);
                //int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                //if (temp > 0)
                //{
                //    //Response.Write("User already exists!");
                //    conn.Close();
                //}
                //else
                //{
                    string insertQuery = "INSERT INTO UserInfo(Id, UserName, Password)" +
                    " values (@keyID, @Uname, @UPASS)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@keyID", txtID.Text);
                    com.Parameters.AddWithValue("@Uname", txtUN.Text);
                    com.Parameters.AddWithValue("@UPASS", txtPW.Text);
                    com.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                    Response.Write("Success!");
                    conn.Close();
                //}
            }
            catch (Exception ex)
            {

            }
            
        }
    }
}