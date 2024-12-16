<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMaster.Master" AutoEventWireup="true" CodeBehind="DeleteAccount.aspx.cs" Inherits="Electronic_Shop.DeleteAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            font-size: x-large;
            color: #0000FF;
        }
    .auto-style8 {
        text-align: center;
        font-size: x-large;
        color: #0000FF;
        height: 41px;
    }
    .auto-style9 {
        text-align: center;
        font-size: x-large;
        color: #0000FF;
        height: 92px;
    }
    .auto-style10 {
        text-align: center;
        font-size: x-large;
        color: #0000FF;
        height: 85px;
    }
    .auto-style11 {
        text-align: center;
        font-size: x-large;
        color: #0000FF;
        height: 122px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        <br />
    </p>
    <p class="auto-style8">
        <strong>Are you sure that you want to delete your account ?</strong></p>
    <p class="auto-style9">
        <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" Text="Yes" Width="60px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/UsersPages/Search.aspx" Text="No" Width="60px" />
    </p>
    <p class="auto-style6">
        <asp:Image ID="Image2" runat="server" Height="304px" ImageUrl="~/Pictures/LogoMakr_02Ouml.png" Width="327px" />
    </p>
    <p class="auto-style10">
        &nbsp;</p>
<p class="auto-style11">
        <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/Main.aspx" Text="Main page" />
    </p>
</asp:Content>
