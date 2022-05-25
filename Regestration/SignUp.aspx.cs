using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Regestration
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection();

            cnn.ConnectionString = " Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory| ProjectR.mdf;Integrated Security=True";
            // cnn.ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\Yasmin\\OneDrive\\Documents\\GitHub\\cs - 495\\Regestration\\App_Data\\ProjectR.mdf; Integrated Security = True";

            string strInsert = String.Format("INSERT INTO [Person] values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}','{8}' , '{9}' ,'{10}' )", TxtFname.Text, txtLname.Text, txtEmail.Text, TxtUser.Text, Calendar1.SelectedDate, rblSex.SelectedValue, ddlCountry.SelectedValue, Txtaddress.Text, TxtPassword.Text, TxtMobile.Text, ddlRole.SelectedValue);

            SqlCommand cmdString = new SqlCommand(strInsert, cnn);

            cnn.Open();
            cmdString.ExecuteNonQuery();
            cnn.Close();
        }
    }
}