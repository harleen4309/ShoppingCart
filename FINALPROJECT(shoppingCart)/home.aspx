<%@ Page Title="" Language="C#" MasterPageFile="~/shopping.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FINALPROJECT_shoppingCart_.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-size: large;
        text-decoration: underline;
        color: #3333FF;
    }
    .auto-style2 {
        text-align: right;
    }
    .auto-style3 {
        width: 100%;
        height: 65px;
    }
    .auto-style4 {
        height: 29px;
        text-align: left;
    }
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        text-align: center;
        height: 31px;
    }
    .auto-style8 {
        text-align: left;
        height: 284px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <strong><span class="auto-style1">
        <table class="auto-style5" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; color: #0033CC">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="welcome2" runat="server"></asp:Label>
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Sign Out</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You have
                    <asp:Label ID="Label8" runat="server" Text="0"></asp:Label>
&nbsp;products in Cart&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">View Cart</asp:LinkButton>
                </td>
            </tr>
        </table>
        <em>&nbsp;<br />
        </em>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4" style="background-color: #33CCFF; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #000099;">Product Categories :
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#000099" OnClick="LinkButton1_Click">Laptops</asp:LinkButton>
&nbsp;| <strong><span class="auto-style1" style="color: #000099">
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#000099" OnClick="LinkButton2_Click">Gaming Consoles</asp:LinkButton>
&nbsp; | <span class="auto-style1">
                    <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#000099" OnClick="LinkButton3_Click">Mobiles</asp:LinkButton>
&nbsp; |&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#000099" OnClick="LinkButton4_Click">View All Products</asp:LinkButton>
                    </span></span></strong></span></strong></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="item_Id" DataSourceID="SqlDataSource1" Height="497px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" RepeatDirection="Horizontal" Width="1170px">
            <ItemTemplate>
                <table border="1" class="auto-style5" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: small; background-color: #99CCFF; color: #000099;">
                    <tr>
                        <td class="auto-style6">Product ID :
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("item_Id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000099" Text=" "></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("item_name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="215px" ImageUrl='<%# Eval("image") %>' Width="284px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000099" Text="Price :"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            &nbsp;$</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <br />
                            &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000099" Text="Description :"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Small" Font-Underline="False" ForeColor="#003300" Text='<%# Eval("description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("item_id")%>' Height="50px" ImageUrl="~/Images/add.png" OnClick="ImageButton1_Click" Width="100px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [item]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [item] WHERE ([category_Id] = @category_Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category_Id" QueryStringField="category" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
<br />

        </div>

    </span></strong>

</asp:Content>
