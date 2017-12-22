using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using AjaxControlToolkit;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Button_logout.Visible = false;
            Button_login.Visible = true;
        }
            
        else
        {
            User.Text = "Hi, " + Session["Login"].ToString();
            Button_login.Visible = false;
            Button_logout.Visible = true;
        }

        if (!IsPostBack)
        {
                    
            this.PopulatePlaces();
        }
      

       
        
    }
    protected void Button_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_login.aspx");
    }
    protected void Button_logout_Click(object sender, EventArgs e)
    {
        Session.Clear();

        HttpCookie myCookie = new HttpCookie("Preferences");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);

        Response.Redirect("index.aspx");
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() == "Khulna" && DropDownList2.SelectedValue.ToString() == "Hospitals")
        {
            Response.Redirect("~/Hospitals/Khulna-hospital.aspx");
        }
        else if(DropDownList1.SelectedValue.ToString() == "Khulna" && DropDownList2.SelectedValue.ToString() == "Restaurants")
        {
            Response.Redirect("~/Restaurant/Restaurant-khulna.aspx");
        }
        else
            ;
       
    }

    private void PopulatePlaces()
    {

        string constr = ConfigurationManager.ConnectionStrings["my_placesConnectionString"].ConnectionString;
        string sqlStatment = "SELECT TOP(5) Name,address FROM my_place Order By date DESC";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(sqlStatment, con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    this.Repeater1.DataSource = ds;
                   
                    this.Repeater1.DataBind();
                }
            }
        }
    }
}