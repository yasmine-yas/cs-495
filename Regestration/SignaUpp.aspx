<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignaUpp.aspx.cs" Inherits="Regestration.SignaUpp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 347px;
        }
        .auto-style3 {
            width: 347px;
            height: 73px;
        }
        .auto-style4 {
            height: 73px;
        }
        .auto-style5 {
            width: 347px;
            height: 56px;
        }
        .auto-style6 {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="background-color: #808080; background-image: none;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtFname" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="E-mail"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label14" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Date of Birth"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label21" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Sex"></asp:Label>
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#006666" RepeatDirection="Horizontal">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Country"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#006666">
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>England </asp:ListItem>
                        <asp:ListItem>Sudan</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label16" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtaddress" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label17" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label18" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtpassword1" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label19" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Mobile Number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#006666" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Submit" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
