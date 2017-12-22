using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin : System.Web.UI.Page
{

    string strConnString = ConfigurationManager.ConnectionStrings["KhulnaConnectionString"].ConnectionString;
    string str;
    SqlCommand com;
    protected void Button1_Click(object sender, EventArgs e)
    {
        insertdata();
    }

    public void insertdata()
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select count(*)from Hospital where name='" + TextBoxname.Text + "'";
        com = new SqlCommand(str, con);
        int count = Convert.ToInt32(com.ExecuteScalar());
        con.Close();
        
            con.Open();
            int len = Upload.PostedFile.ContentLength;
            byte[] pic = new byte[len + 1];
            Upload.PostedFile.InputStream.Read(pic, 0, len);
            str = "insert into Hospital values (@ID,@Name,@Address,@contactNo,@image,@lat,@long)";
            com = new SqlCommand(str, con);
            com.Parameters.AddWithValue("@ID", TextBoxid.Text);
            com.Parameters.AddWithValue("@Name", TextBoxname.Text);
            com.Parameters.AddWithValue("@Address", TextBoxaddress.Text);
            com.Parameters.AddWithValue("@contactNo", TextBoxcontact.Text);
            
            com.Parameters.AddWithValue("@image", pic);
            com.Parameters.AddWithValue("@lat", TextBoxlat.Text);
            com.Parameters.AddWithValue("@long", TextBoxlong.Text);
            //com.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("Admin.aspx");
            con.Close();
        }
    }
    
    
