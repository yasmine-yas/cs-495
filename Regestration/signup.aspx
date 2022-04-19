<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Regestration.signup1" %>

<!DOCTYPE html>

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
            margin-left: 78px;
        }
        .auto-style4 {
            margin-left: 142px;
        }
        .auto-style5 {
            margin-left: 155px;
        }
        .auto-style6 {
            margin-left: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" ForeColor="#666666" Text="welome in our university"></asp:Label>
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="First Name"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Second Nmae"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Mobile Number"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="password"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4" Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="confirm password"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Small" Text="Address"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style5" OnTextChanged="TextBox6_TextChanged" Width="171px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
