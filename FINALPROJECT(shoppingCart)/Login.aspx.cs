using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace FINALPROJECT_shoppingCart_
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            lblpassword.Visible = false;
            lblusername.Visible = false;
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            connection.Open();
            string checkuser = "select count(*) from users where username='" + txtusername.Text + "'";
            SqlCommand command = new SqlCommand(checkuser, connection);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();
            if (temp == 1)
            {
                lblusername.Visible = false;
                connection.Open();
                string checkpass = "select password from users where username ='" + txtusername.Text + "'";
                SqlCommand passcommand = new SqlCommand(checkpass, connection);
                string password = passcommand.ExecuteScalar().ToString().Replace(" ","");
                if(password == txtpassword.Text)
                {
                    
                    lblpassword.Visible = false;
                    Session["New"] = txtusername.Text;
                    string getid = "select user_id from users where username ='" + txtusername.Text + "'";
                   
                    SqlCommand idcommand = new SqlCommand(getid, connection);
                    int id = Convert.ToInt32(idcommand.ExecuteScalar().ToString());
                    Session["id"] = id;
                    DataTable dt = new DataTable();
                    DataRow dr;
                     
                    dt.Columns.Add("item_id");
                    dt.Columns.Add("item_name");
                    dt.Columns.Add("quantity");
                    dt.Columns.Add("price");
                    dt.Columns.Add("totalprice");
                    dt.Columns.Add("image");
                    dr = dt.NewRow();
                    string getcart = "select * from item i inner join cart c on (i.item_id = c.item_id) where c.user_id = " + id;
                    int price =0;
                    int totalprice = 0;
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = getcart;
                    cmd.Connection = connection;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {

                        dr["item_id"] = ds.Tables[0].Rows[i]["item_id"].ToString();
                        dr["item_name"] = ds.Tables[0].Rows[i]["item_name"].ToString();
                        dr["image"] = ds.Tables[0].Rows[i]["image"].ToString();
                        dr["quantity"] = 1;
                        
                        dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                        price = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                        totalprice = price * 1;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        dr = dt.NewRow();
                    }
                   
                
                    Session["cart"] = dt;
                    lblpassword.Visible = false;
                    Response.Write("Password is correct");
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblpassword.Visible = true;
                    
                }

            }
            else
            {
                lblusername.Visible = true;

            }
            connection.Close();
        }
    }
}