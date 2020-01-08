using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FINALPROJECT_shoppingCart_
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(IsPostBack)
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                connection.Open();
                string checkuser = "select count(*) from users where username='"+txtUserName.Text+"'";
                SqlCommand command = new SqlCommand(checkuser, connection);
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                if(temp == 1)
                {
                    lblSameUsername.Visible = true;
                    lblSameUsername.Text = "User already exists!, Please Pick another username";
                }
                connection.Close();

            }


        }

     
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack)
                {
                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    connection.Open();
                    string checkuser = "select count(*) from users where username='"+txtUserName.Text+"'";
                    SqlCommand command = new SqlCommand(checkuser, connection);
                    int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                    if (temp >0)
                    {
                        lblSameUsername.Visible = true;
                        lblSameUsername.Text = "User already exists!, Please Pick another username.";
                        connection.Close();
                    }

                    else
                    {

                        connection.Close();
                        connection.Open();
                        string insertQuery = "insert into users values(@uname,@password,@email)";
                        SqlCommand command2 = new SqlCommand(insertQuery, connection);
                        command2.Parameters.AddWithValue("@uname", txtUserName.Text);
                        command2.Parameters.AddWithValue("@email", txtEmail.Text);
                        command2.Parameters.AddWithValue("@password", txtPassword.Text);
                        command2.ExecuteNonQuery();
                        Response.Write("Registration Successful!");
                        connection.Close();
                        Response.Redirect("Home.aspx");
                       
                    }
                   

                }
             
            }
            catch(Exception e2)
            {
                Response.Write(" Error : " + e2.Message);
            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = txtPassword.Text = txtEmail.Text = txtConfPassword.Text = "";
        }
    }
}