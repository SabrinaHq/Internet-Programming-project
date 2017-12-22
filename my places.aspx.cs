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

public partial class my_places : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Response.Redirect("user_login.aspx");
        }

        else
        {
            var name = Session["Login"].ToString();
        }


        if (!IsPostBack)
        {
           
                this.PopulatePlaces();
               
        }



    }

    private void PopulatePlaces()
    {
       
            string constr = ConfigurationManager.ConnectionStrings["my_placesConnectionString"].ConnectionString;

            var name = Session["Login"].ToString();
         

            //string searchSQL = "WHERE user_name='%' + name + '%'";


           // string sqlStatment = "SELECT Name,address FROM my_place" + searchSQL;

           string sqlStatment = "SELECT Name,address FROM my_place WHERE [user_name]='" + Session["Login"].ToString()+"'";
           
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

   