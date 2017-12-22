using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registrationConnectionString"].ConnectionString);
            conn.Open();

            string checkUser = "Select count(*) from Userdata where Username='" + TextBoxUN.Text + "'";
            SqlCommand comm = new SqlCommand(checkUser, conn);

            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Write("User already exists!");
            }

            conn.Close();
        }
    }
    protected void ButtonSignUp_Click(object sender, EventArgs e)
    {

        try
        {

            Guid newGuid = Guid.NewGuid();


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registrationConnectionString"].ConnectionString);
            conn.Open();

            string insertQuery = "Insert into Userdata (Id,Username,Email,Password,Country,PostalCode,ContactNumber) values (@id,@Uname,@email,@password,@country,@postalcode,@contactnumber) ";
            SqlCommand comm = new SqlCommand(insertQuery, conn);
            comm.Parameters.AddWithValue("@id", newGuid.ToString());
            comm.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            comm.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            comm.Parameters.AddWithValue("@password", TextBoxPW.Text);
            comm.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
            comm.Parameters.AddWithValue("@postalcode", TextBoxPostalCode.Text);
            comm.Parameters.AddWithValue("@contactnumber", TextBoxContactNumber.Text);

            comm.ExecuteNonQuery();

            Response.Write("Registration is successful!");
            Response.Redirect("index.aspx");
           

            conn.Close();

        }

        catch (Exception ex)
        {
            Response.Write("Error :" + ex.ToString());
        }
    }
    protected void TextBoxUN_TextChanged(object sender, EventArgs e)
    {

    }
}