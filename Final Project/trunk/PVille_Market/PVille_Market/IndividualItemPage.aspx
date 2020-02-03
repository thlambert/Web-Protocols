<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="IndividualItemPage.aspx.cs" Inherits="PVille_Market.IndividualItemPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Master" runat="server">
    <style>
        .centerAlign {
            margin: auto;
            width: 50%;
            border: 3px solid orange;
            padding: 10px;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            width: 20%;
        }

        .auto-style4 {
            width: 10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="centerAlign">
        <table class="auto-style1">
            <tr>
                <td class=".auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style3">
                    <strong>VIEW LISTING</strong></td>
                <td class=".auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class=".auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class=".auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class=".auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Price:"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPrice" runat="server" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class=".auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class=".auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Quantity:"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class=".auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class=".auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Description:"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDesc" runat="server" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class=".auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class=".auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Image:"></asp:Label></td>
                <td class="auto-style3">
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="91px" Width="166px" />
                    <br />
                </td>
                <td class=".auto-style2">
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to cart" />
                   <asp:Label ID="lblAdd" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PvilleMarketConnectionString2 %>" SelectCommand="SELECT * FROM [Listings]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
       <Columns>
          <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
          <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
          <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
          <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
          <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
          <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
          <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
       </Columns>
    </asp:GridView>
</asp:Content>
