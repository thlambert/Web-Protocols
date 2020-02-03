<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="CreateListing.aspx.cs" Inherits="PVille_Market.CreateListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Master" runat="server">
   <link rel="stylesheet" href="Styles.css" type="text/css"/>
    <style type="text/css">
        .auto-style1 {
  margin: auto;
  width: 50%;
  border: 3px solid orange;
  padding: 10px;
        }
    .auto-style2 {
        width: 181px;
    }
    .auto-style3 {
        width: 181px;
        font-size: x-large;
    }
    .auto-style4 {
        width: 160px;
    }
    .auto-style5 {
        width: 1108px;
    }
    .auto-style6 {
        color: #FF0000;
    }
       .auto-style7 {
          width: 160px;
          height: 44px;
       }
       .auto-style8 {
          width: 181px;
          height: 44px;
       }
       /*.auto-style9 {
          width: 1108px;
          height: 44px;
       }*/
       .auto-style10 {
          height: 44px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3"><strong>NEW LISTING</strong></td>
            <td class="auto-style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PvilleMarketConnectionString2 %>" SelectCommand="SELECT * FROM [Listings]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="Enter Product Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5"><em>
                <asp:RequiredFieldValidator ID="vldProductName" runat="server" CssClass="auto-style6" ErrorMessage="Product Name Is Required" ControlToValidate="txtProductName"></asp:RequiredFieldValidator>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style4">Enter Prodcut Description</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5"><em>
                <asp:RequiredFieldValidator ID="vldDescription" runat="server" CssClass="auto-style6" ErrorMessage="Description Required" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Text="Enter Price Per Unit"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5"><em>
                <asp:RequiredFieldValidator ID="vldPrice" runat="server" CssClass="auto-style6" ErrorMessage="Price is Required" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Text="Enter Quantity "></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5"><em>
                <asp:RequiredFieldValidator ID="vldQuantity" runat="server" CssClass="auto-style6" ErrorMessage="Quantity is Required" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label13" runat="server" Text="Add a Picture"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:FileUpload ID="fuPicture" runat="server" />
                </td>
            <td class="auto-style9">
               <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
               <asp:Label ID="lblFileExtension" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="btnReset" runat="server" Text="Reset Fields" OnClick="btnReset_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" style="width: 61px" />
            </td>
            <td class="auto-style5">
                <asp:Image ID="Image1" runat="server" Height="71px" Width="135px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
