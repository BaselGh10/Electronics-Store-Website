<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="ManagerLogIn.aspx.cs" Inherits="Electronic_Shop.ManagerLogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        <strong><span class="auto-style3">Manager Name: </span>
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p class="auto-style2">
        <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password: </span>
        <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" CssClass="auto-style3" TextMode="Password"></asp:TextBox>
        </strong>
    </p>
    <p class="auto-style2">
        <asp:Button ID="Button1" runat="server" Text="Log In" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button1_Click" />
    </p>
    <p class="auto-style2">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
<p class="auto-style2">
        <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Pictures/manager.png" Width="350px" />
    </p>
<p class="auto-style2">
        <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/Main.aspx" Text="Back" />
    </p>
</asp:Content>
