using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace MyImpenetrableSite
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            // Create a SqlConnection object
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MISConnectionString"].ToString());

            // Autogenerate a username
            //string firstName = Request.Form["txtFirstName"].ToString().Trim();
            string firstName = txtFirstName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string username = firstName[0].ToString().ToLower() + lastName.ToLower();
            string password = firstName + "." + lastName;
            string email = txtEmail.Text.Trim();
            string telephone = txtPhone.Text.Trim();
            // INSERT statements and SqlCommand
            string strInsert = "INSERT INTO Users (FirstName, LastName, Email, Phone, Username, Password, RoleId, StatusId, LastLoginTime) " +
                "VALUES ('" + firstName + "', '" + lastName + "', '" + email + "', '" + telephone + "', '" + username + "', '" + password +
                "', 2, 1, '" + DateTime.Now.ToString() + "')";

            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Admin.aspx");
        }
    }
}