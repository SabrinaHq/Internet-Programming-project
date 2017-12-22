using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /**HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];
        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                //Session["Login"] = TextBoxUsername.Text.Trim();
                //Response.Redirect("Users_home.aspx");
            }
        }*/
     
    } 
    protected void Button_login_Click(object sender, EventArgs e)
    {
        /**if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registrationConnectionString"].ConnectionString);
            conn.Open();

            string checkUser = "Select count(*) from Userdata where Username='" + TextBoxUsername.Text + "'";
            SqlCommand comm = new SqlCommand(checkUser, conn);

            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();

                string checkPassword = "Select password from Userdata where Username='" + TextBoxUsername.Text + "'";

                SqlCommand pass_com = new SqlCommand(checkPassword, conn);
                string Password = pass_com.ExecuteScalar().ToString().Replace(" ", "");

                if (Password == TextBoxPassword.Text)
                {

                    Session["New"] = TextBoxUsername.Text;
                    Response.Write("password is correct");
                    Session["login"] = TextBoxUsername.Text.Trim();
                    if (CheckBox_rememberMe.Checked == true)
                    {
                        HttpCookie userCookie;
                        userCookie = Request.Cookies["Preferences"];
                        if (userCookie == null)
                        {
                            userCookie = new HttpCookie("Preferences");
                            userCookie.Expires = DateTime.Now.AddMonths(1);
                            Response.Cookies.Add(userCookie);
                        }
                    }


                    // Session["New"] = TextBoxUsername.Text;
                    Response.Redirect("Users_home.aspx");

                }
                else
                    Response.Write("Incorrect password!");
            }

            else
            {
                Response.Write("Username is not correct");
            }
        */
        }
            
        

    
}
    
