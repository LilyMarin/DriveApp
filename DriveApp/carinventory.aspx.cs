using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace DriveApp
{
    public partial class carinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            fillMakeModelValues();
            GridView1.DataBind();
        }

        // update button
        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        // delete button
        protected void Button5_Click(object sender, EventArgs e)
        {

        }


        // go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //getCarByID();
        }


        // user defined functions
        void fillMakeModelValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT make_name FROM make_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList4.DataSource = dt;
                DropDownList4.DataValueField = "make_name";
                DropDownList4.DataBind();

                cmd = new SqlCommand("SELECT model_name FROM model_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList5.DataSource = dt;
                DropDownList5.DataValueField = "model_name";
                DropDownList5.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        bool checkIfCarExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM car_inventory_tbl WHERE car_id='" + TextBox1.Text.Trim() + "';", con);
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
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

       /* void getCarByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM car_tbl WHERE car_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["production_year"].ToString();
                    TextBox5.Text = dt.Rows[0]["interior"].ToString().Trim();
                    TextBox7.Text = dt.Rows[0]["exterior"].ToString().Trim();
                    TextBox12.Text = dt.Rows[0]["vin_number"].ToString().Trim();
                    TextBox2.Text = dt.Rows[0]["mileage"].ToString().Trim();
                    TextBox8.Text = dt.Rows[0]["engine"].ToString();
                    TextBox3.Text = dt.Rows[0]["doors"].ToString();
                    TextBox9.Text = dt.Rows[0]["seats"].ToString();
                    TextBox6.Text = dt.Rows[0]["fuel_type"].ToString();
                    TextBox6.Text = dt.Rows[0]["trim"].ToString();
                    TextBox6.Text = dt.Rows[0]["price"].ToString();
                    TextBox6.Text = dt.Rows[0]["description"].ToString();

                    DropDownList4.SelectedValue = dt.Rows[0]["make"].ToString().Trim();
                    DropDownList5.SelectedValue = dt.Rows[0]["model"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["transmission"].ToString().Trim();

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["amenities"].ToString().Trim().Split(',');
                    for (int i = 0; i < genre.Length; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == genre[i])
                            {
                                ListBox1.Items[j].Selected = true;

                            }
                        }
                    }

                    global_filepath = dt.Rows[0]["car_img_link"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Car ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    */

        // add button
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (checkIfCarExists())
            {
                Response.Write("<script>alert('Car Already Exists, try some other Car ID');</script>");
            }
            else
            {
                addNewCar();
            }
        }




        void addNewCar()
        {
            try
            {
                //string amenities = "";
                //foreach (int i in ListBox1.GetSelectedIndices())
                //{
                // amenities = amenities + ListBox1.Items[i] + ", ";
                //}
                // genres = Adventure,Self Help,
                //amenities = amenities.Remove(amenities.Length - 1);

                // string filepath = "~/book_inventory/books1.png";
                //string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                // FileUpload1.SaveAs(Server.MapPath("book_inventory/" + filename));
                // filepath = "~/book_inventory/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO car_inventory_tbl(car_id,make,model,vin_number)values(@car_id,@make,@model,@vin_number)", con);

                cmd.Parameters.AddWithValue("@car_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@make", DropDownList4.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@amenities", amenities);
                cmd.Parameters.AddWithValue("@model", DropDownList5.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@vin_number", TextBox12.Text.Trim());
                //cmd.Parameters.AddWithValue("@production_year", TextBox4.Text.Trim());
                //cmd.Parameters.AddWithValue("@interior", TextBox5.Text.Trim());
                //cmd.Parameters.AddWithValue("@exterior", TextBox7.Text.Trim());
                //cmd.Parameters.AddWithValue("@mileage", TextBox2.Text.Trim());
                //cmd.Parameters.AddWithValue("@engine", TextBox8.Text.Trim());
                //cmd.Parameters.AddWithValue("@transmission", DropDownList1.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@doors", TextBox3.Text.Trim());
                //cmd.Parameters.AddWithValue("@seats", TextBox9.Text.Trim());
                //cmd.Parameters.AddWithValue("@fuel_type", DropDownList2.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@trim", DropDownList3.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@price", TextBox11.Text.Trim());
                // cmd.Parameters.AddWithValue("@description", TextBox6.Text.Trim());
                //cmd.Parameters.AddWithValue("@book_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Car added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}