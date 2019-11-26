<%@ Page Title="" Language="C#" MasterPageFile="~/Prog6/Prog6MasterPage.Master" AutoEventWireup="true" CodeBehind="SetRoles.aspx.cs" Inherits="Prog1.Prog6.SetRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width:25%">&nbsp;</td>
            <td>

                <asp:TextBox ID="txtRoleAdd" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlUsers" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnDeleteUser" runat="server" Text="Delete User" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnAddRole" runat="server" Text="Add Role" />
            </td>
            <td>
                <asp:Button ID="btnRemoveRole" runat="server" Text="Remove Role" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnAddRoleToUser" runat="server" Text="Add User to Role" />
            </td>
            <td>
                <asp:Button ID="btnRemoveRoleFromUser" runat="server" Text="Remove User from Role" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlRole" runat="server" DataSourceID="SqlDataSource1" DataTextField="Role" DataValueField="Role">
                    <asp:ListItem Value="Admin"></asp:ListItem>
                    <asp:ListItem Value="Csse"></asp:ListItem>
                    <asp:ListItem Value="Member"></asp:ListItem>
                    <asp:ListItem Value="ReadOnly"></asp:ListItem>
                    <asp:ListItem Value="ReadWrite"></asp:ListItem>
                    <asp:ListItem Value="Something"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT DISTINCT [Role] FROM [UserInfo]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [UserInfo]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlUsersWithRole" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="Role">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</asp:Content>
