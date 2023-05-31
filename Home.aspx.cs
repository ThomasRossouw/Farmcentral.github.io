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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        // the connection to the database is opened when the page opens
        protected void Page_Load(object sender, EventArgs e)
        {

            string userId = Application["Name"].ToString();

            con.Open();







            string find = "select * from Products where (UserId like '%' +@UserId+ '%')";
            SqlCommand cmd = new SqlCommand(find, con);
            cmd.Parameters.Add("@UserId", System.Data.SqlDbType.NVarChar).Value = userId;
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "UserId");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();




        }

        // the insert button that allows for the data to pass through to the database and output on the gridview
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string userId2 = Application["Name"].ToString();
                SqlCommand cmd = new SqlCommand("insert into Products values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + userId2 + "')", con);
                //SqlCommand cmd = new SqlCommand("insert into Products values('" + TextBox1.Text + "','" + 2 + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
                //DateTime.ParseExact(TextBox3.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
                cmd.ExecuteNonQuery();

                //cmd.Parameters.Add("@ProductDate", SqlDbType.DateTime).Value = Convert.ToDateTime(TextBox3.Text).ToString();



                con.Close();

                Label5.Text = "Data has been added";
                GridView1.DataBind();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "mm/dd/yyyy";
                Response.Redirect(Request.RawUrl);

            }
            catch (Exception ex)
            {
                Label5.Text = "Please ensure that all the entered data is entered in the correct format";
            }
        }

        // Logs the farmer out of the website - prompting the login page 
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

}  
    