using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DealCapture_Web_DEV
{
    public partial class Login : Holder
    {
        // Declar Variables
        string loginQuery;
        string roleQuery;
        int count;

        // declare classes
        SqlConnection marketingDB;
        SqlCommand loginCmd;
        SqlCommand roleCmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBtnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            marketingDB = new SqlConnection();
            using (marketingDB)
            {
                // Open the connection with the database
                marketingDB.Open();

                // Count will return one if username and password match someone within the table
                loginQuery = "SELECT COUNT(1) FROM tblUser WHERE username=@username AND password=@password";

                // Creat our SQL command to send to DB
                loginCmd = new SqlCommand(loginQuery, marketingDB);

                // add the parameters to the query
                loginCmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                loginCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                // Converts the query result to a int I.E 1 or 0
                count = Convert.ToInt32(loginCmd.ExecuteScalar());

                // Log in is correct, check role acces
                if(count == 1)
                {
                    // Get the role of the user loggin in
                    roleQuery = "SELECT role from tblUser WHERE username =@roleusername";

                    // instantiate our new command
                    roleCmd = new SqlCommand(roleQuery, marketingDB);
                    // Store values within the query
                    roleCmd.Parameters.AddWithValue("roleusername", txtUsername.Text.Trim());

                    // Convert the query output to a char
                    role = Convert.ToChar(roleCmd.ExecuteScalar());
                    // store session user
                    Session["username"] = txtUsername.Text.Trim();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    pnlIncorrectLogin.Visible = true;
                }




            }
        }
    }
}