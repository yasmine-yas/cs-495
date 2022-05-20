<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Regestration.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 59px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            margin-left: 63px;
        }
        .auto-style5 {
            height: 33px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style3">
            <tr>
                <td>
            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
            <asp:TextBox ID="TxtUserName" runat="server" CssClass="auto-style4" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style6">
        <asp:TextBox ID="TxtPassword" runat="server" CssClass="auto-style2" Width="223px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Logn In" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
