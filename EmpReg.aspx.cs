using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace FarmCentral
{
    public partial class EmpReg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        // the connection to the database is opened when the page opens
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        // the submit button allows the entered data to be inputted into the database
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into Users values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "','" + 2 + "' )", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Date has been successfully processed";
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }

            catch
            {
                Label1.Text = "Please ensure that all the inputted fields have data.";
            }


        }

        // Logs the employee out of the website - prompting the login page 
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        //takes the employee to the Products page
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpProducts.aspx");
        }

        // takes the employee to the Farmer Registry page
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpReg.aspx");
        }
    }
}