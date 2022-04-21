<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Regestration.signup1" %>
<%@ Import Namespace="System.Data.SqlClient"  %>

<!DOCTYPE html>
<script runat="server">

    protected void btnSubmit_Click(object sender , EventArgs e)
    {

        //create connection object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=[DataDirectory]Student.mdf;Integrated Security=True";
        //create insert statement

        string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')", txtLname.Text, txtLname.Text, rblSex.SelectedValue,txtPassword.Text,txtPassword.Text, txtPhone.Text );

        // 3- Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);


        try
        {
            //  int x = 0, y = 0, z;
            //   z = x / y; 


            // 4- Open the database
            conn.Open();

            // 5- Execute SQL Command
            cmdInsert.ExecuteNonQuery();

            // 6- Close the database
            conn.Close();

            HttpCookie koko = new HttpCookie("userInfo");

            koko.Values.Add("passw", txtPassword.Text);

            koko.Values.Add("Fn", txtLname.Text);
            koko.Values.Add("Ln", txtLname.Text);
            koko.Expires = DateTime.Now.AddDays(3);
            Response.Cookies.Add(koko);

            IbIMsg.Text = "Welcome " + txtLname + ", Your Account has been Successfully Created!!";
        }

        catch (SqlException err)
        {
            if (err.Number == 2627)
                IbIMsg.Text = "The Username " + txtLname.Text + " already used, Please choose another !!";
            else
                IbIMsg.Text = "Database error, Please try later !!";
        }

        catch
        {
            IbIMsg.Text = "The system is not available at the moment, you may try later !!";
        }
    }

    //open
    //conn.Open();

    // 5- Execute SQL Command
    //  cmdInsert.ExecuteNonQuery();

    //close
    //conn.Close();

    //IbIMsg.Text = "welcome" + txtFname + "your account has been created!";

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 38px;
        }
        .auto-style5 {
            height: 34px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <br />
            
            <table class="auto-style1">

              
                 <tr>
            <td class="auto-style9">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" ForeColor="#666666" Text="welome in our university"></asp:Label>
            
            </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                </tr>
            
                </table>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="First Name"></asp:Label>
                      <font face="aria"l color="#000022" size="-1">Example: Ahmed or Abdel Rahman</font>
                        <br />
                    </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtLname0" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtLname0" ErrorMessage="Invalid First Name Format!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style5">
                </td>
            </tr>
                <tr>
                    
                    <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Second Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                    <asp:TextBox ID="txtLname" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last Name Format!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Sex"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblSex" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" TextMode="Password" Width="212px" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                 
                        <input type="checkbox" onchange="document.getElementById('Password').type=this.checked  ? 'text' : 'Password' " />
            Show password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtPassword" ErrorMessage="Should be bet 8 and 16 characters!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                                         
                        </td>
                    
                
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="txtPassword0" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" TextMode="Password" Width="212px"></asp:TextBox>
                        

                        &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPassword0" ErrorMessage="Incorrect password!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="Invalid First Name Format!!"></asp:RegularExpressionValidator>
                        

                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Mobile Number"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="txtPhone" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Mobile Number Number !!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="txtLname1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtLname1" ErrorMessage="Invalid First Name Format!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
        <asp:Button ID="btnSubmit0" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </p>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
            <asp:Label ID="IbIMsg" runat="server" Font-Bold="True" Font-Names="Arial Black" ForeColor="#666666" Text="message"></asp:Label>
        
    </form>
</body>
</html>
