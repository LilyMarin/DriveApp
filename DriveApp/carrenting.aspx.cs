using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DriveApp
{
    public partial class carrenting : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        // rent button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfCarExist() && checkIfCustomerExist())
            {

                if (checkIfRentingEntryExist())
                {
                    Response.Write("<script>alert('This Member already has this car');</script>");
                }
                else
                {
                    issueCar();
                }

            }
            else
            {
                Response.Write("<script>alert('Wrong Car ID or Member ID');</script>");
            }
        }

        // return button
        protected void Button3_Click(object sender, EventArgs e)
        {
            returnCar();
        }

        // go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getNames();
        }


        bool checkIfCustomerExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM customer_tbl WHERE customer_id='" + TextBox3.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfCarExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM car_inventory_tbl WHERE car_id='" + TextBox4.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool checkIfRentingEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM rental_tbl WHERE customer_id='" + TextBox3.Text.Trim() + "' AND car_id='" + TextBox4.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }


        void issueCar()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO rental_tbl(customer_id,customer_name,car_id,make,model,start_date,end_date) values(@customer_id,@customer_name,@car_id,@make,@model,@start_date,@end_date)", con);

                cmd.Parameters.AddWithValue("@customer_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@customer_name", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@car_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@make", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@model", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@start_date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@end_date", TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();

                //cmd = new SqlCommand("UPDATE  book_master_tbl SET current_stock = current_stock-1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);

               // cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Car Issued Successfully');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void returnCar()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("DELETE FROM rental_tbl WHERE car_id='" + TextBox4.Text.Trim() + "' AND customer_id='" + TextBox3.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {

                    // cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock + 1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Car Returned Successfully');</script>");
                    GridView1.DataBind();

                    con.Close();

                }
                else
                {
                    Response.Write("<script>alert('Error - Invalid details');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM car_inventory_tbl WHERE car_id='" + TextBox4.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox6.Text = dt.Rows[0]["make"].ToString();
                    TextBox1.Text = dt.Rows[0]["model"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Car ID');</script>");
                }

               
                cmd = new SqlCommand("SELECT full_name FROM customer_tbl WHERE customer_id='" + TextBox3.Text.Trim() + "'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox5.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}