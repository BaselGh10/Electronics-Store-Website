<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Electronic_Shop.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 31%;
    }
    .auto-style6 {
        text-align: center;
        color: #0000FF;
    }
    .auto-style11 {
        font-size: x-large;
        color: #0000FF;
    }
    .auto-style12 {
        color: #0000FF;
    }
    .auto-style14 {
        font-size: large;
    }
    .auto-style15 {
        text-align: center;
        width: 401px;
        color: #0000FF;
        height: 41px;
    }
    .auto-style16 {
        width: 334px;
        text-align: center;
        height: 41px;
    }
        .auto-style17 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style17">
        &nbsp;</p>
<table align="center" class="auto-style5">
    <tr>
        <td class="auto-style6" colspan="2" style="font-family: 'Baskerville Old Face'"><strong><span class="auto-style11">Log In</span><br class="auto-style12" />
            <br />
            <br />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style15" style="font-family: 'Baskerville Old Face'"><strong>User Name:</strong></td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox1" runat="server" Width="225px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15" style="font-family: 'Baskerville Old Face'"><strong>Password:</strong></td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="225px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2" style="font-family: 'Baskerville Old Face'">
            <br />
            <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Size="Large" ForeColor="Gold" Text="Go" Width="69px" Font-Names="Baskerville Old Face" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <strong>&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" Font-Underline="False" PostBackUrl="~/MainPages/SignUp.aspx">Sign Up</asp:LinkButton>
            </strong>&nbsp;<em><span class="auto-style14">/ </span></em> &nbsp;<strong><asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" Font-Underline="False" OnClick="LinkButton2_Click">Forgot Password</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/Main.aspx" Text="Back" Width="96px" />
            </strong></td>
    </tr>
</table>
<br />
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
</asp:Content>
