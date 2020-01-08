<%@ Page Title="" Language="C#" MasterPageFile="~/shopping.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FINALPROJECT_shoppingCart_.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 5px solid #0000FF;
            background-color: #00FFFF;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            width: 535px;
        }
        .auto-style4 {
            width: 535px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="About Us"></asp:Label>
    </p>
    <p>
        This Website was created with the help of ASP.NET technology.
    </p>
    <p>
        It includes the use ADO.NET to retrieve database values.</p>
    <p>
        It uses query strings.</p>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000099" Text="Group Project:"></asp:Label>
    </p>
    <table cellpadding="4" cellspacing="4" class="auto-style1">
        <tr>
            <td class="auto-style3" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">NAMES </td>
            <td class="auto-style2" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">ID</td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">HARNOOR SINGH</td>
            <td class="auto-style2" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">991489996</td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">HARLEEN KAUR</td>
            <td class="auto-style2" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">991498957</td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">KARANBIR SINGH</td>
            <td class="auto-style2" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #000080">991501554</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>
