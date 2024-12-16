<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Electronic_Shop.Main1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        width: 100%;
        height: 430px;
    }
        .auto-style4 {
            text-align: center;
            width: 667px;
        }
    .auto-style5 {
        text-align: center;
    }
    .auto-style6 {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<br />
<table class="auto-style3">
    <tr>
        <td class="auto-style4">
            <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="X-Large" ForeColor="Gold" Height="70px" Text="Log In" Width="250px" PostBackUrl="~/MainPages/LogIn.aspx" />
        </td>
        <td rowspan="2" class="auto-style2">
            <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" ImageUrl="~/Pictures/Logo.png" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="X-Large" ForeColor="Gold" Height="70px" Text="Sign Up" Width="250px" PostBackUrl="~/MainPages/SignUp.aspx" />
        </td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<asp:Panel ID="Panel1" runat="server">
    <div class="auto-style5">
        <strong>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style6" PostBackUrl="~/ManagersPages/ManagerLogIn.aspx">Managers Room</asp:LinkButton>
        </strong>
    </div>
</asp:Panel>
<br />
<br />
</asp:Content>
