<%@ Page Title="" Language="C#" MasterPageFile="~/Prog6/Prog6MasterPage.Master" AutoEventWireup="true" CodeBehind="Page Shopping.aspx.cs" Inherits="Prog1.Prog6.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH1" runat="server">


        
    <table style="width: 100%">
        <tr>
            <td>Product ID</td>
            <td>Product Name</td>
            <td>Price</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtID" runat="server" OnTextChanged="txtChange"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Quantity</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Sub Total</td>
            <td>Tax</td>
            <td>Grand Total</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtSubTot" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtTax" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtGrandTot" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnCompute" runat="server" OnClick="btnCalculate" Text="Compute" />
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add to Shopping Bag" />
            </td>
            <td>
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset1" Text="Reset" />
            </td>
        </tr>
    </table>
&nbsp;
</asp:Content>