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
        string strinsert = String.Format("INSERT IN TO MEMBER VALUES('{0}','{1}','{2}','{3}','{4}','{5}'");

        //conn.Open();
        //conn.Close();

        IbIMsg.Text = "The connection works correctly";
    }
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" ForeColor="#666666" Text="welome in our university"></asp:Label>
            <br />
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="First Name"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Second Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                    <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Sex"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Password"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" TextMode="Password" Width="212px" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                 
                        <input type="checkbox" onchange="document.getElementById('Password').type=this.checked  ? 'text' : 'Password' " />
            Show password
                                         
                        </td>
                    
                
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="txtPassword0" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" TextMode="Password" Width="212px"></asp:TextBox>
                        

                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Mobile Number"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="TextBox11" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
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
