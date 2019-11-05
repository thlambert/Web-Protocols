<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Prog1.Prog5.Login" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="../StyleSheetProg3.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CS 3870 - Prog5</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="CS3870Title">Web Protocols, Technologies and Applications </h1>
            <h2 class="CS3870Name">Thomas Lambert</h2>
        </div>
        <div>
            <table style="width: 100%">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Log In"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUN" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 23px">
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td style="height: 23px">
                        <asp:TextBox ID="txtPW" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="height: 23px"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Prog5/CreateUser.aspx">Create New User</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
