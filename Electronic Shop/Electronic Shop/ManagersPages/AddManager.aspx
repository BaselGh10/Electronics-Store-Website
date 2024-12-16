<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="AddManager.aspx.cs" Inherits="Electronic_Shop.AddManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <br />
        <br />
        <strong><span class="auto-style3">Add manager:<br />
        </span></strong>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style4">Name:</span></strong>
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        <br />
        <strong><span class="auto-style4">Password: </span></strong>
        <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button1_Click" Text="Add" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/ManagersPages/ManagerPage.aspx" Text="Back" />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
