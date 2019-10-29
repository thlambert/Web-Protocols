<%@ Page Title="" Language="C#" MasterPageFile="~/Prog3/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page Updating.aspx.cs" Inherits="Prog1.Prog3.Page_Updating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH1" runat="server">

       
&nbsp;&nbsp;

    <br /> <br /> 
    <br /> <br /> 

    <br />
    <table style="width: 100%">
        <tr>
            <td>
       
    <asp:Button ID="btnFirst" runat="server" Text="First" OnClick="btnFirst_Click" />
            </td>
            <td>
    <asp:Button ID="btnPrevious" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
            </td>
            <td>
    <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
            </td>
            <td>
    <asp:Button ID="btnLast" runat="server" Text="Last" OnClick="btnLast_Click" />

            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Product ID</td>
            <td>Product Name</td>
            <td>Unit Price</td>
            <td>Description</td>
        </tr>
        <tr>
            <td> 

    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
            <td>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
            <td>
    <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td> 

    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </td>
            <td>
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            </td>
            <td>
    <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

    <asp:TextBox ID="txtMsg" runat="server" Height="59px" Width="273px" style="margin-left: 0px"></asp:TextBox>

    </asp:Content>