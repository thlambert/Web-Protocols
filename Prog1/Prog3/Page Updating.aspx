<%@ Page Title="" Language="C#" MasterPageFile="~/Prog3/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page Updating.aspx.cs" Inherits="Prog1.Prog3.Page_Updating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH1" runat="server">

       
    <input type="submit" name="ctl00$ContentPlaceHolder1$btnFirst" value="First" id="ContentPlaceHolder1_btnFirst" disabled="disabled" class="aspNetDisabled" style="z-index: 1; position: relative; width: 10%; margin-left:22.5%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnPrevious" value="Previous" id="ContentPlaceHolder1_btnPrevious" disabled="disabled" class="aspNetDisabled" style="z-index: 1; position: relative; width: 10%; margin-left:5%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnNext" value="Next" id="ContentPlaceHolder1_btnNext" style="z-index: 1; position: relative; width: 10%; margin-left:5%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnLast" value="Last" id="ContentPlaceHolder1_btnLast" style="z-index: 1; position: relative; width: 10%; margin-left:5%; text-align: center" />

    <br /> <br /> 
    <br /> <br /> 

    <span id="ContentPlaceHolder1_lblID" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:12.5%; text-align: center">Product ID</span>

    <span id="ContentPlaceHolder1_Label1" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: center">Product Name</span>

    <span id="ContentPlaceHolder1_Label2" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: center">Unit Price</span>

    <span id="ContentPlaceHolder1_Label3" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: center">Description</span>

        <br /> 

    <input name="ctl00$ContentPlaceHolder1$txtID" type="text" value="1   " readonly="readonly" id="ContentPlaceHolder1_txtID" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:12.5%" />

    <input name="ctl00$ContentPlaceHolder1$txtName" type="text" value="1" id="ContentPlaceHolder1_txtName" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:5%" />

    <input name="ctl00$ContentPlaceHolder1$txtPrice" type="text" value="$1.00" id="ContentPlaceHolder1_txtPrice" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:5%; text-align: right" />

    <input name="ctl00$ContentPlaceHolder1$txtDescription" type="text" value="5" id="ContentPlaceHolder1_txtDescription" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:5%" />

        <br /> <br /> 
    <br /> <br /> 

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnUpdate" value="Update" id="ContentPlaceHolder1_btnUpdate" style="z-index: 1; position: relative; width: 10%; margin-left:25%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete" value="Delete" id="ContentPlaceHolder1_btnDelete" style="z-index: 1; position: relative; width: 10%; margin-left:10%; text-align: center" />

    <input type="submit" name="ctl00$ContentPlaceHolder1$btnNew" value="New" id="ContentPlaceHolder1_btnNew" style="z-index: 1; position: relative; width: 10%; margin-left:10%; text-align: center" />

    <br /> <br /> 
    <br /> <br /> 

    <textarea name="ctl00$ContentPlaceHolder1$txtMsg" rows="2" cols="20" readonly="readonly" id="ContentPlaceHolder1_txtMsg" style="height:200px;z-index: 1; position: relative; width: 40%; margin-left:30%">
</textarea>

    </asp:Content>