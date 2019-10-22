<%@ Page Title="" Language="C#" MasterPageFile="~/Prog3/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page Shopping.aspx.cs" Inherits="Prog1.Prog3.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH1" runat="server">


        
    <span id="ContentPlaceHolder1_lblID" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:17.5%; text-align: center">Product ID</span>

    <span id="ContentPlaceHolder1_Label1" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: center">Product Name</span>

    <span id="ContentPlaceHolder1_Label3" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: center">Price</span>

    <br /> 

    <input name="ctl00$ContentPlaceHolder1$txtID" type="text" onchange="javascript:setTimeout(&#39;WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$txtID&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtID" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:17.5%" />

    <input name="ctl00$ContentPlaceHolder1$txtName" type="text" readonly="readonly" id="ContentPlaceHolder1_txtName" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: right" />

    <input name="ctl00$ContentPlaceHolder1$txtPrice" type="text" readonly="readonly" onchange="javascript:setTimeout(&#39;WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$txtPrice&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtPrice" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: right" />


    <br /> <br /> <br /> <br /> <br />

    <span id="ContentPlaceHolder1_Label2" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:17.5%; text-align: center">Quantity</span>

    <br /> 

    <input name="ctl00$ContentPlaceHolder1$txtQuanity" type="text" onchange="javascript:setTimeout(&#39;WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$txtQuanity&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtQuanity" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:17.5%" />

    <br /> <br /> 

        <br /> <br /> <br /> <br /> <br />


    <span id="ContentPlaceHolder1_Label4" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:17.5%; text-align: center">Sub Total</span>

    <span id="ContentPlaceHolder1_Label5" style="display:inline-block;height:19px;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: center">Tax</span>

    <span id="ContentPlaceHolder1_Label6" style="display:inline-block;width:15%;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: center">Grand Total</span>

    <input name="ctl00$ContentPlaceHolder1$txtSubTotal" type="text" readonly="readonly" id="ContentPlaceHolder1_txtSubTotal" tabindex="-1" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:17.5%; text-align:right" />

    <input name="ctl00$ContentPlaceHolder1$txtTax" type="text" readonly="readonly" id="ContentPlaceHolder1_txtTax" tabindex="-1" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: right" />

    <input name="ctl00$ContentPlaceHolder1$txtGrandTotal" type="text" readonly="readonly" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtGrandTotal\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtGrandTotal" tabindex="-1" style="border-style:Solid;z-index: 1; position: relative; width: 15%; margin-left:10%; text-align: right" />

</div>
    </asp:Content>