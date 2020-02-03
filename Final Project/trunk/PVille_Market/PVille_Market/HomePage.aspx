<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PVille_Market.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="centerItems">
        <asp:GridView ID="gridViewProd" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" OnSelectedIndexChanged="gridViewProd_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" Visible="false" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <%--<asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />--%>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <%--<asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />--%>
                <asp:ButtonField Text="Select" CommandName="Select" ItemStyle-Width="150"   />
            </Columns>
            <HeaderStyle BackColor="#3366CC" ForeColor="#FF6600" />
            <RowStyle BackColor="#999999" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PvilleMarketConnectionString2 %>" SelectCommand="SELECT * FROM [Listings]"></asp:SqlDataSource>
    </div>
</asp:Content>
