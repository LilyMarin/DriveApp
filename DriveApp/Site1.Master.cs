using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DriveApp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link btn
                    LinkButton2.Visible = true; // sign up link btn

                    LinkButton3.Visible = false; // logout link btn
                    LinkButton7.Visible = false; // hello user link btn
                    LinkButton14.Visible = false; // profile link btn
                    LinkButton6.Visible = true; // admin login link btn
                    LinkButton11.Visible = false; // author management link btn
                    LinkButton12.Visible = false; // publisher management link btn
                    LinkButton8.Visible = false; // book inventory link btn
                    LinkButton9.Visible = false; // book issuing link btn
                    LinkButton10.Visible = false; // member management link btn
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link btn
                    LinkButton2.Visible = false; // sign up link btn

                    LinkButton3.Visible = true; // logout link btn
                    LinkButton7.Visible = true; // hello user link btn
                    LinkButton7.Text = "Hello " + Session["username"].ToString();
                    LinkButton14.Visible = true; // profile link btn
                    LinkButton6.Visible = true; // admin login link btn
                    LinkButton11.Visible = false; // author management link btn
                    LinkButton12.Visible = false; // publisher management link btn
                    LinkButton8.Visible = false; // book inventory link btn
                    LinkButton9.Visible = false; // book issuing link btn
                    LinkButton10.Visible = false; // member management link btn
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link btn
                    LinkButton2.Visible = false; // sign up link btn
                    LinkButton14.Visible = false; // profile link btn
                    LinkButton3.Visible = true; // logout link btn
                    LinkButton7.Visible = true; // hello user link btn
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false; // admin login link btn
                    LinkButton11.Visible = true; // author management link btn
                    LinkButton12.Visible = true; // publisher management link btn
                    LinkButton8.Visible = true; // book inventory link btn
                    LinkButton9.Visible = true; // book issuing link btn
                    LinkButton10.Visible = true; // member management link btn
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("modelmng.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("makemng.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("car_inventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("carrenting.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("membermanagment.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("carrenting.aspx");
        }

        // logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login link btn
            LinkButton2.Visible = true; // sign up link btn
            LinkButton14.Visible = false; // profile link btn
            LinkButton3.Visible = false; // logout link btn
            LinkButton7.Visible = false; // hello user link btn

            LinkButton6.Visible = true; // admin login link btn
            LinkButton11.Visible = false; // author management link btn
            LinkButton12.Visible = false; // publisher management link btn
            LinkButton8.Visible = false; // book inventory link btn
            LinkButton9.Visible = false; // book issuing link btn
            LinkButton10.Visible = false; // member management link btn

            Response.Redirect("index.aspx");
        }


        // profile link
        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_profile.aspx");
        }
    }
}