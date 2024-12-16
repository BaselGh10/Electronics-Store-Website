<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Electronic_Shop.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style7 {
            text-align: center;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style6">
        <strong>Create your new password:</strong></p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style7">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New password:
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        </strong>
    </p>
    <p class="auto-style7">
        <strong>Re-enter the password:
        <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        </strong>
    </p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button3_Click" Text="Done" />
    </p>
    <p class="auto-style7">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Medium" ForeColor="Blue" Text="Enter and re-enter the password correctly" Visible="False"></asp:Label>
    </p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/Main.aspx" Text="Back to main page" />
    </p>
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        &nbsp;</p>
    </asp:Content>
