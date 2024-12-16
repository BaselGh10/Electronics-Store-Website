<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Electronic_Shop.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
    }
    .auto-style6 {
        width: 35%;
    }
    .auto-style7 {
        color: #0000FF;
        text-align: center;
    }
    .auto-style9 {
        color: #0000FF;
        width: 667px;
        text-align: center;
        height: 46px;
    }
    .auto-style10 {
        text-align: center;
        height: 46px;
    }
    .auto-style11 {
        color: #0000FF;
        text-align: center;
        height: 95px;
    }
    .auto-style12 {
        font-size: x-large;
    }
        .auto-style13 {
            color: #0000FF;
            width: 667px;
            text-align: center;
            height: 45px;
        }
        .auto-style14 {
            text-align: center;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
    &nbsp;</p>
<table align="center" class="auto-style6">
    <tr>
        <td class="auto-style11" colspan="2"><strong><span class="auto-style12">Sign Up</span><br />
            <br />
            <br />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>User Name:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox1" runat="server" Width="260px" AutoCompleteType="Disabled"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Personal Name:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="260px" AutoCompleteType="Disabled"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Password:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="260px" AutoCompleteType="Disabled" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Confirm Password:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="260px" AutoCompleteType="Disabled"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Secret Question:</strong></td>
        <td class="auto-style14">
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Width="270px">
                <asp:ListItem>What is your favorite color ?</asp:ListItem>
                <asp:ListItem>Who is your favorite actor ?</asp:ListItem>
                <asp:ListItem>What is your favorite cartoon character ?</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Answer:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox5" runat="server" Width="260px" AutoCompleteType="Disabled"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Phone Number:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged" Width="260px" AutoCompleteType="Disabled"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            <br />
            <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button3_Click" Text="Sign Up" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Baskerville Old Face" PostBackUrl="~/MainPages/LogIn.aspx">I have an account</asp:LinkButton>
        </td>
    </tr>
</table>
<p class="auto-style5">
    &nbsp;</p>
    <p class="auto-style5">
        <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/Main.aspx" Text="Back" Width="88px" />
    </p>
    <p class="auto-style5">
        &nbsp;</p>
</asp:Content>
