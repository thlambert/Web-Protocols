<%@ Page Title="" Language="C#" MasterPageFile="~/Prog3/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page Default.aspx.cs" Inherits="Prog1.Prog3.Page_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH1" runat="server">
               <div>
	               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                       <Columns>
                           <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                           <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                           <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                           <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                       </Columns>
                   </asp:GridView>
                   </div>
</asp:Content>
