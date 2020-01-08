<%@ Page Title="" Language="C#" MasterPageFile="~/shopping.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="FINALPROJECT_shoppingCart_.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblCartEmpty" runat="server" Font-Bold="True" ForeColor="Red" Text="Please add items to cart." Visible="False"></asp:Label>
    <br />
    <asp:Label ID="lblbeforeTax" runat="server" Text="Total Price"></asp:Label>
    :
    <asp:TextBox ID="txtBeforeTax" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="lblTax" runat="server" Text="Tax"></asp:Label>
    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTax" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblAfterTax" runat="server" Text="Net Price"></asp:Label>
    :&nbsp;&nbsp;
    <asp:TextBox ID="txtAfterTax" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="lblPay" runat="server" Text="Payment Information"></asp:Label>
    <br />
    
    <br />

    <asp:Label ID="lblcardHolderName" runat="server" Text="Card Holder Name: "></asp:Label>
&nbsp;<asp:TextBox ID="txtCardHolderName" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqdvalCardName" runat="server" ControlToValidate="txtCardHolderName" Display="Dynamic" ErrorMessage="Please enter Card Holder Name." Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cmpValName" runat="server" ControlToValidate="txtCardHolderName" Display="Dynamic" ErrorMessage="Please enter valid name." Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Enabled="False"></asp:CompareValidator>
    <br />
    <asp:Label ID="lblCardNumber" runat="server" Text="Card Number: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCardNumber" runat="server"  ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqdvalCardNumber" runat="server" ControlToValidate="txtCardNumber" Display="Dynamic" ErrorMessage="Please enter Card Number." Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cmpValCardNumber" runat="server" ControlToValidate="txtCardNumber" Enabled="False" ErrorMessage="Please enter a valid card number." Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <br />
    <asp:Label ID="lblCCV" runat="server" Text="Security Code: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtSecCode" runat="server"  ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqdValSecCode" runat="server" ControlToValidate="txtSecCode" Display="Dynamic" ErrorMessage="Please enter Security Code." Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cmpValSecCode" runat="server" ControlToValidate="txtSecCode" Enabled="False" ErrorMessage="Please enter a valid security code." Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <br />
    <asp:Label ID="lblExpiryDate" runat="server" Text="Expiry Date: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtExpiryDate" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqdValExpiryDAte" runat="server" ControlToValidate="txtExpiryDate" Display="Dynamic" ErrorMessage="Please enter Expiry Date." Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    &nbsp;<br />
&nbsp;<br />
    <asp:Button ID="btnOrder" runat="server" OnClick="btnOrder_Click" Text="Confirm Order" />
    &nbsp;<asp:Label ID="lblOrderSuccess" runat="server" Font-Bold="True" Text="Order placed sucessfully!!" Visible="False"></asp:Label>
    <br />
</asp:Content>
