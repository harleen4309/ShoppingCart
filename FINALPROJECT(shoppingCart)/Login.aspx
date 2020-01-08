<%@ Page Title="" Language="C#" MasterPageFile="~/shopping.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FINALPROJECT_shoppingCart_.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 263px;
        height: 37px;
    }
        .auto-style4 {
            height: 26px;
            width: 263px;
            text-align: right;
        }
        .auto-style5 {
            width: 263px;
            text-align: right;
            height: 80px;
        }
        .auto-style6 {
            width: 392px;
        height: 37px;
        font-size: small;
        color: #000099;
        text-align: left;
    }
        .auto-style7 {
            height: 26px;
            width: 392px;
        }
        .auto-style8 {
            width: 392px;
            height: 80px;
        }
        .auto-style9 {
            height: 80px;
        }
        .auto-style10 {
            width: 263px;
            height: 39px;
        }
        .auto-style11 {
            width: 392px;
            height: 39px;
        }
        .auto-style12 {
            height: 39px;
        }
    .auto-style13 {
        height: 37px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Size="X-Large" ForeColor="DarkMagenta"></asp:Label>
    <br />
    <table class="auto-style1" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: bold; background-color: #CCFFFF; padding: 10px; margin: 23px; border-style: solid; border-width: thin; color: darkmagenta"
        >
        <tr>
            <td class="auto-style5">User Name:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="189px" BorderStyle="Groove"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="*Please enter username" Font-Bold="True" Font-Size="Small" ForeColor="#E41400"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#E41400" Text="Username is incorrect" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Password:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" TextMode="Password" Width="189px" BorderStyle="Groove"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="*Please enter password" Font-Bold="True" Font-Size="Small" ForeColor="#E41400"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lblpassword" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#E41400" Text="Password is incorrect" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style6">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000066" NavigateUrl="~/Register.aspx">New User ? Register here.</asp:HyperLink>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Height="35px" OnClick="btnLogin_Click" Text="Login" Width="75px" />
            </td>
            <td class="auto-style12"></td>
        </tr>
    </table>
    <br />
</asp:Content>
