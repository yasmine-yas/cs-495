<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WEBSignUp.aspx.cs" Inherits="Regestration.WEBSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 960px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 191px;
        }
        .auto-style4 {
            width: 345px;
        }
        .auto-style5 {
            width: 205px;
        }
        .auto-style6 {
            width: 191px;
            height: 26px;
        }
        .auto-style7 {
            width: 345px;
            height: 26px;
        }
        .auto-style8 {
            width: 205px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('webImages/OIP (8).jpg'); background-repeat: repeat">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="TxtFname" runat="server" OnTextChanged="TxtFname_TextChanged" Width="335px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtFname" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                    </td>
                    <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtFname" ErrorMessage="Invalid first name format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="txtLname" runat="server" Width="333px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                    </td>
                    <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last name format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label12" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="E-mail"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="330px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                    </td>
                    <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label13" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="E-mail"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="txtEmail0" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                    </td>
                    <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                    <asp:Label ID="Label14" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style7">
                    <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtUser" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtUser" ErrorMessage="Invalid User Name format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label15" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label21" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Sex"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:RadioButtonList ID="rblSex" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#006666" RepeatDirection="Horizontal">
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label16" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="Txtaddress" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtPassword" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                    </td>
                    <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Should be between 8 and 16" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="Label17" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
