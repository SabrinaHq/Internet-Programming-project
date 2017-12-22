using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Configuration;

public partial class user_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];

        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = Login2.UserName.ToString();
                Response.Redirect("Users_home.aspx");
            }
        }

        if (!IsPostBack) //check if the webpage is loaded for the first time.
        {
            ViewState["PreviousPage"] =
        Request.UrlReferrer;//Saves the Previous page url in ViewState
        }

        
    }


    protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["registrationConnectionString"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select Username from Userdata where Username = '" + Login2.UserName.ToString() + "' and password = '" + Login2.Password.ToString() + "' ";
        SqlDataReader reader = select.ExecuteReader();
        if (reader.Read())
        {
            Session["login"] = Login2.UserName.ToString();
            if (Login2.RememberMeSet == true)
            {
               
                
                HttpCookie userCookie;
                userCookie = Request.Cookies["Preferences"];
                if (userCookie == null)
                {
                    userCookie = new HttpCookie("Preferences");
                    userCookie.Expires = DateTime.Now.AddSeconds(30);
                    Response.Cookies.Add(userCookie);
                }

            }

            if (ViewState["PreviousPage"] != null)	//Check if the ViewState 
            //contains Previous page URL
            {
                Response.Redirect(ViewState["PreviousPage"].ToString());//Redirect to 
                //Previous page by retrieving the PreviousPage Url from ViewState.
            }
             //Response.Redirect("Users_home.aspx");
        }
        reader.Close();
        con.Close();
    }
}