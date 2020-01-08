using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALPROJECT_shoppingCart_
{
    public partial class CheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Total"] == null)
            {

                Response.Redirect("AddToCart.aspx");
                //txtTax.Text = "0.00";
                //txtBeforeTax.Text = "0.00";
                //txtAfterTax.Text = "0.00";
            }
            else
            {
                txtBeforeTax.Text = Session["Total"].ToString();
                double price = double.Parse(txtBeforeTax.Text);
                double taxRate = 0.13;
                double tax = price * taxRate;
                double netPrice = price * 1.13;
                txtTax.Text = tax.ToString();
                txtAfterTax.Text = netPrice.ToString();
            }

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            if (txtCardHolderName.Text != "" || txtCardNumber.Text != "" || txtExpiryDate.Text != "" || txtSecCode.Text != "")
                lblOrderSuccess.Visible = true;
        }

        private void clearsavedcart()
        {
            String mycon = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;

            String updatedata = "delete from cart where user_id=" + Session["id"];
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("Home.aspx");
        }

        //protected void txtCardNumber_TextChanged(object sender, EventArgs e)
        //{
        //    cmpValCardNumber.Enabled = true;
        //}

        //protected void txtSecCode_TextChanged(object sender, EventArgs e)
        //{
        //    cmpValSecCode.Enabled = true;
        //}

        //protected void txtExpiryDate_TextChanged(object sender, EventArgs e)
        //{
        //    //cmpValExpDate.Enabled = true;
        //}

        //protected void txtCardHolderName_TextChanged(object sender, EventArgs e)
        //{
        //    cmpValName.Enabled = true;
        //}
    }
}