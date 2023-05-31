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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Employee login - allows for employees to log in and view all the data and add new farmers
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;
                int emp = 1;

                con.Open();
                string qry = "select * from Users where UserName='" + uid + "' and Password='" + pass + "' and UserType='" + emp + "'";

                SqlCommand cmd = new SqlCommand(qry, con);

                SqlDataReader sdr = cmd.ExecuteReader();



                if (sdr.Read())
                {
                    Label1.Text = "Employee Login has been Successful!";
                    Response.Redirect("EmpProducts.aspx");
                }


                else
                {
                    Label1.Text = "Employee Login has been Unsuceessful";
                }


                con.Close();
            }

            catch (Exception ex)
            {
                Label1.Text = "There has been a logging in error";
            }


        }

        // Farmers login button allowing them to gain access to their profiles
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;


                int farm = 2;

                con.Open();
                string qry = "select * from Users where UserName='" + uid + "' and Password='" + pass + "' and UserType='" + farm + "'";


                SqlCommand cmd = new SqlCommand(qry, con);



                SqlDataReader sdr = cmd.ExecuteReader();




                if (sdr.Read())
                {

                    Label1.Text = "Farmer Login has been Successful!";

                    con.Close();


                    con.Open();
                    string qry2 = "select UserId from Users where UserName='" + uid + "' and Password='" + pass + "' and UserType='" + farm + "'";

                    SqlCommand cmd1 = new SqlCommand(qry2, con);
                    DataTable result = new DataTable();

                    string userNum = cmd1.ExecuteScalar().ToString();

                

                    Application["Name"] = userNum;

                    Response.Redirect("Home.aspx");
                }


                else
                {
                    Label1.Text = "Farmer Login has been unsuccessful";
                }


                con.Close();
            }

            catch (Exception ex)
            {
                Label1.Text = "A Login Error has occurred";
            }
        }
    }
    }
   
