<%@ Page Title="" Language="C#" MasterPageFile="~/Prog5/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page Default.aspx.cs" Inherits="Prog1.Prog5.Page_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH1" runat="server">
               <%--<div>
	               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                   <asp:GridView ID="ProductGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                       <Columns>
                           <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                           <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                           <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                           <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                       </Columns>
                   </asp:GridView>
                   </div>--%>

    <asp:GridView runat="server" ID="ProductGrid1" AutoGenerateColumns="False" 
        style="z-index: 1; position: relative; width: 50%; margin-left:25%; 
align-items: center; height: 176px" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnPageIndexChanging="ProductGrid_PageIndexChanging" PageSize="5" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" >
                <ItemStyle HorizontalAlign="Center"  Width="10%"></ItemStyle></asp:BoundField>
            
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" >
                <ItemStyle HorizontalAlign="Left" Width="20%"></ItemStyle></asp:BoundField>
            
            <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" 
                DataFormatString="{0:c}" HtmlEncode="False" >
                <ItemStyle HorizontalAlign="Right" Width="10%"></ItemStyle></asp:BoundField>
            
            <asp:BoundField DataField="Description" HeaderText="Description">
                <ItemStyle HorizontalAlign="right" Width="10%"></ItemStyle></asp:BoundField>

        </Columns>

        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Previou" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

    </asp:GridView>
</asp:Content>
