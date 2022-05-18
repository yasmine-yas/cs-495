<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webIndex.aspx.cs" Inherits="Web_Finalproject.Index" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 194px;
            height: 98px;
        }
        .auto-style5 {
            width: 362px;
            height: 98px;
        }
        .auto-style13 {
            width: 658px;
            height: 98px;
        }
        .auto-style16 {
            width: 866px;
            height: 98px;
        }
        .auto-style17 {
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="background-color: #C0C0C0; background-image: inherit; border-style: double; border-width: medium">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" Height="126px" ImageUrl="~/webImages/FUE LOGO.jpg" Width="123px" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="About Us"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="Admission Requirements">Overview</asp:ListItem>
                            <asp:ListItem>Contact Us</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="Admission"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="Admission Requirements">Admission Requirements</asp:ListItem>
                            <asp:ListItem>Admission Regulations</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="Sign In"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="167px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Sign In Student</asp:ListItem>
                            <asp:ListItem>Sign In Staff</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="Faculties"></asp:Label>
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="167px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Computer Science</asp:ListItem>
                            <asp:ListItem>Dentistry</asp:ListItem>
                            <asp:ListItem>Political Science</asp:ListItem>
                            <asp:ListItem>Bussiness</asp:ListItem>
                            <asp:ListItem>Pharmacy</asp:ListItem>
                            <asp:ListItem>Physical Therapy</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="Sign Up"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="167px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Sign Up Student</asp:ListItem>
                            <asp:ListItem>Sign Up Staff</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
