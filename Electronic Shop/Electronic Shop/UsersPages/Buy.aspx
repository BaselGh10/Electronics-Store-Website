<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMaster.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Electronic_Shop.Buy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
    <br />
        <span class="auto-style8"><strong>
        <br />
        Confirm purchase...<br />
        </strong></span><br />
    <br />
    <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button2_Click" Text="I am buying" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/UsersPages/ViewDevice.aspx" Text="Not now..." />
        <br />
        <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/Pictures/check.png" Width="340px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
</div>
</asp:Content>
