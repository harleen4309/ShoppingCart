<%@ Page Title="" Language="C#" MasterPageFile="~/shopping.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FINALPROJECT_shoppingCart_.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 226px;
        }
        .auto-style3 {
            width: 226px;
            text-align: right;
            height: 59px;
        }
        .auto-style4 {
            width: 226px;
            text-align: right;
            height: 60px;
        }
        .auto-style5 {
            height: 60px;
            text-align: left;
        }
        .auto-style6 {
            width: 226px;
            text-align: right;
            height: 61px;
        }
        .auto-style7 {
            height: 61px;
            text-align: left;
        }
        .auto-style8 {
            width: 226px;
            text-align: right;
            height: 76px;
        }
        .auto-style9 {
            height: 76px;
            text-align: left;
        }
        .auto-style10 {
            height: 59px;
            text-align: left;
        }
        .auto-style11 {
            width: 318px;
        }
        .auto-style12 {
            height: 60px;
            width: 318px;
        }
        .auto-style13 {
            height: 61px;
            width: 318px;
        }
        .auto-style14 {
            height: 76px;
            width: 318px;
        }
        .auto-style15 {
            height: 59px;
            width: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblRegister" runat="server" Text="Registeration" Font-Bold="True" Font-Size="X-Large" ForeColor="DarkMagenta"></asp:Label>
  
    <table id="regisTable" aria-busy="False" class="auto-style1" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: bold; background-color: #CCFFFF; padding: 10px; margin: 10px; border-style: solid; border-width: thin; color: darkmagenta">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">User Name:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtUserName" runat="server" BorderColor="#0033CC" BorderStyle="Groove" ForeColor="Black" Height="28px" Width="305px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="*Please enter your username" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblSameUsername" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#E41400" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">E-mail:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtEmail" runat="server" BorderColor="#0033CC" BorderStyle="Groove" ForeColor="Black" Height="28px" Width="305px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please enter your email" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*You must enter the email ID" Font-Size="Small" ForeColor="#E41400" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtPassword" runat="server" BorderColor="#0033CC" BorderStyle="Groove" ForeColor="Black" Height="28px" TextMode="Password" Width="305px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Please enter a password" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm Password:</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtConfPassword" runat="server" BorderColor="#0033CC" BorderStyle="Groove" ForeColor="Black" Height="28px" TextMode="Password" Width="305px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfPassword" ErrorMessage="*Please confirm your password" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" ErrorMessage="*Both passwords must be same !" Font-Bold="True" Font-Size="Small" ForeColor="#E41400"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" ForeColor="DarkMagenta" OnClick="btnSubmit_Click" Text="Submit" /> &nbsp;
                <asp:Button ID="btnReset" runat="server" Font-Bold="True" ForeColor="DarkMagenta" OnClick="btnReset_Click" Text="Reset" Width="71px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  
</asp:Content>
