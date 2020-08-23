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
    public partial class car_inventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillMakeModelValues();
            }

            GridView1.DataBind();
        }

        // add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfCarExists())
            {
                Response.Write("<script>alert('Car Already Exists, try some other Car ID or VIN Number');</script>");
            }
            else
            {
                addNewCar();
            } 
        }

        // update button
        protected void Button4_Click(object sender, EventArgs e)
        {
            updateCarByID();
        }

        // delete button
        protected void Button5_Click(object sender, EventArgs e)
        {
            deleteCarByID();
        }

        // go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getCarByID();
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
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "make_name";
                DropDownList2.DataBind();

                cmd = new SqlCommand("SELECT model_name FROM model_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "model_name";
                DropDownList1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }


        void addNewCar()
        {
            try
            {

                string filepath = "~/car_inventory/books1.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("car_inventory/" + filename));
                filepath = "~/car_inventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO car_inventory_tbl(car_id,make,model,vin,production_year,interior,exterior,mileage,amenities,engine,transmission,doors,seats,fuel_type,trim,price,description,car_img_link) values(@car_id,@make,@model,@vin,@production_year,@interior,@exterior,@mileage,@amenities,@engine,@transmission,@doors,@seats,@fuel_type,@trim,@price,@description,@car_img_link)", con);
             
                cmd.Parameters.AddWithValue("@car_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@make", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@model", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@vin", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@production_year", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@interior", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@exterior", TextBox6.Text.Trim());

                cmd.Parameters.AddWithValue("@mileage", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@amenities", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@engine", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@transmission", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@doors", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@seats", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@fuel_type", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@trim", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@price", TextBox16.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox18.Text.Trim());
                cmd.Parameters.AddWithValue("@car_img_link", filepath);

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


        bool checkIfCarExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from car_inventory_tbl where car_id='" + TextBox1.Text.Trim() + "' OR vin='" + TextBox12.Text.Trim() + "';", con);
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

        void updateCarByID()
        {

            if (checkIfCarExists())
            {
                try
                {
                    string filepath = "~/car_inventory/jeep";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;

                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("car_inventory/" + filename));
                        filepath = "~/car_inventory/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE car_inventory_tbl set make=@make, model=@model, vin=@vin, production_year=@production_year, interior=@interior, exterior=@exterior, mileage=@mileage, amenities=@amenities, engine=@engine, transmission=@transmission, doors=@doors, seats=@seats, fuel_type=@fuel_type, trim=@trim, price=@price, description=@description, car_img_link=@car_img_link where car_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@make", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@model", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@vin", TextBox12.Text.Trim());
                    cmd.Parameters.AddWithValue("@production_year", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@interior", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@exterior", TextBox6.Text.Trim());

                    cmd.Parameters.AddWithValue("@mileage", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@amenities", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@engine", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@transmission", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@doors", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@seats", TextBox13.Text.Trim());
                    cmd.Parameters.AddWithValue("@fuel_type", TextBox14.Text.Trim());
                    cmd.Parameters.AddWithValue("@trim", TextBox15.Text.Trim());
                    cmd.Parameters.AddWithValue("@price", TextBox16.Text.Trim());
                    cmd.Parameters.AddWithValue("@description", TextBox18.Text.Trim());
                    cmd.Parameters.AddWithValue("@car_img_link", filepath);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Car Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Car ID');</script>");
            }
        }

        void deleteCarByID()
        {
            if (checkIfCarExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from car_inventory_tbl WHERE car_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Car Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Car ID');</script>");
            }
        }

        void getCarByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from car_inventory_tbl WHERE car_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox12.Text = dt.Rows[0]["vin"].ToString();
                    TextBox4.Text = dt.Rows[0]["production_year"].ToString();
                    TextBox5.Text = dt.Rows[0]["interior"].ToString();
                    TextBox6.Text = dt.Rows[0]["exterior"].ToString().Trim();
                    TextBox7.Text = dt.Rows[0]["mileage"].ToString().Trim();
                    TextBox8.Text = dt.Rows[0]["amenities"].ToString().Trim();
                    TextBox9.Text = dt.Rows[0]["engine"].ToString().Trim();
                    TextBox10.Text = dt.Rows[0]["transmission"].ToString();

                    TextBox11.Text = dt.Rows[0]["doors"].ToString();
                    TextBox13.Text = dt.Rows[0]["seats"].ToString().Trim();
                    TextBox14.Text = dt.Rows[0]["fuel_type"].ToString().Trim();
                    TextBox15.Text = dt.Rows[0]["trim"].ToString().Trim();
                    TextBox16.Text = dt.Rows[0]["price"].ToString().Trim();
                    TextBox18.Text = dt.Rows[0]["description"].ToString();

                    DropDownList2.SelectedValue = dt.Rows[0][1].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["model"].ToString().Trim();

                    global_filepath = dt.Rows[0]["car_img_link"].ToString();

                    DropDownList2.SelectedValue = null;
                    DropDownList2.DataBind();

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
        

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox18.Text = "";
            DropDownList2.SelectedValue = "";
            DropDownList1.SelectedValue = "";

        }
    }
}