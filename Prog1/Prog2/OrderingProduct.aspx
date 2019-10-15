<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderingProduct.aspx.cs" Inherits="Prog1.Prog2.OrderingProduct" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	CS 3870 - Program 2
    </title>
    <link rel="stylesheet" type="text/css" href="../StyleSheet1.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 128px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <ul class="navbar">
                <li> <a href="Default.aspx">Start Page</a></li>
                <li> <a href="OrderingProduct.aspx">Ordering Product Page</a></li>
            </ul>
        </div>
        <div>
            <h1 class="CS3870Title">Web Protocols, Technologies and Applications </h1>
            <h2 class="CS3870Name">Thomas Lambert</h2>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductID" ErrorMessage="ID cannot be empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price cannot be empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity cannot be empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CompareValidator 
                            ID="CompareValidator1" 
                            runat="server"
                            ControlToValidate="txtPrice" 
                            ErrorMessage="Price must be a positive number" 
                            ForeColor="Red"
                            type="Double"
                            operator="GreaterThan"
                            valuetocompare="0">
                        </asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CompareValidator 
                            ID="CompareValidator2" 
                            runat="server" 
                            ControlToValidate="txtQuantity"
                            ErrorMessage="Quantity must be a non-negative integer!" 
                            ForeColor="Red"
                            type="Integer"
                            operator="GreaterThan"
                            valuetocompare="0">
                        </asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Sub Total"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Tax"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Grand Total"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtSubtotal" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtTax" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtGrandTotal" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCompute" runat="server" OnClick="btnCompute_Click" Text="Compute" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" CausesValidation="False" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>

    
</body>
</html>
