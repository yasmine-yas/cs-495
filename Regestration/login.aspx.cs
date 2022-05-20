using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Regestration
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //1- create connection
            SqlConnection cnn = new SqlConnection();
            cnn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Project.mdf;Integrated Security=True";


            //2- create SQL insert statment

           
            string strSelect = "SELECT * FROM Personn "
            + " WHERE Username = '" + TxtUserName.Text + "' AND "
            + " Password = '" + TxtPassword.Text + "'";

            //3- create select command 
            SqlCommand cmdSelect = new SqlCommand(strSelect , cnn);


            //4-create data reader object
            SqlDataReader reader;

            //5- open database
            cnn.Open();

            //6- select command
            reader = cmdSelect.ExecuteReader();


            //check reader
            if (reader.Read())
            {
                if (TxtUserName.Text == "Student2022")
                {
                    Response.Redirect("~/StudentHome.aspx");
                }
                else if ( TxtUserName.Text == "Doctor2022")
                {
                    Response.Redirect("~/DoctorHome.aspx");
                }
                else
                {
                    Response.Redirect("~/AssistantHome.aspx");
                }
            }
            else
            {
                lblMsg.Text = "Username or password is incorrect";
            }

            //7- close database
            cnn.Close();
        }
    }
}