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
    public partial class EmpProducts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        // the connection to the database is opened when the page opens
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }


        // the Search Button code with the prompted users input
        // displays with a message and adapts the gridview
        protected void Button2_Click(object sender, EventArgs e)
        {  
                string find = " select * from Products where (ProductName like '%' +@ProductName+ '%')";
                SqlCommand cmd = new SqlCommand(find, con);
                cmd.Parameters.Add("@ProductName", SqlDbType.NVarChar).Value = TextBox5.Text;
                cmd.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds, "UserId");

                GridView1.DataSourceID = null;
                GridView1.DataSource = ds;
                GridView1.DataBind();

                con.Close();
                Label5.Text = "The searched data is below";

           
        }

        // refreshes the page for the searched items to display with whole inventory
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpProducts.aspx");
        }

        // Logs the employee out of the website - prompting the login page 
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        //takes the employee to the Products page
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpProducts.aspx");
        }

        // takes the employee to the Farmer Registry page
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpReg.aspx");
        }
    }
}