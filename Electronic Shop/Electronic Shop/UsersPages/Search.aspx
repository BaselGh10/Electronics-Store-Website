<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Electronic_Shop.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
        font-size: large;
        color: #0000FF;
    }
    .auto-style7 {
        font-weight: bold;
    }
    .auto-style8 {
        font-size: xx-large;
        color: #0000FF;
    }
    .auto-style9 {
        font-size: xx-large;
    }
        .auto-style11 {
            text-align: center;
            font-size: large;
            color: #0000FF;
            height: 48px;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
            color: #0000FF;
            height: 13px;
        }
        .auto-style13 {
            text-align: center;
            font-size: large;
            color: #0000FF;
            height: 79px;
        }
        .auto-style14 {
            text-align: center;
            font-size: large;
            color: #0000FF;
            height: 90px;
        }
        .auto-style15 {
            text-align: center;
            font-size: large;
            color: #0000FF;
            height: 55px;
        }
        .auto-style16 {
            text-align: center;
            font-size: large;
            color: #0000FF;
            height: 64px;
        }
        .auto-style17 {
            font-weight: bold;
            color: #FFD700;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
    &nbsp;</p>
<p class="auto-style5">
    <strong><span class="auto-style9">Welcome</span></strong> <strong>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
&nbsp;<span class="auto-style9">!</span></strong></p>
<p class="auto-style5">
    &nbsp;</p>
<p class="auto-style12" style="font-family: 'baskerville Old Face'">
    <strong>Choose the device&#39;s type:</strong></p>
<p class="auto-style11">
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style17" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" ForeColor="Blue" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="250px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [Types]"></asp:SqlDataSource>
</p>
<p class="auto-style12">
    <strong style="font-family: 'baskerville Old Face'">Choose brand:</strong></p>
<p class="auto-style13">
    <strong>
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style17" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" ForeColor="Blue" Width="250px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [Brands]"></asp:SqlDataSource>
    </strong>
</p>
<p class="auto-style14" style="font-family: 'baskerville Old Face'">
    <strong>Min price:
    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Max price:
    <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
    </strong></p>
<p class="auto-style15" style="font-family: 'baskerville Old Face'">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" Text="Search" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong></p>
<p class="auto-style16" style="font-family: 'baskerville Old Face'">
    <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/LogIn.aspx" Text="Log in from another account" />
</p>
</asp:Content>
