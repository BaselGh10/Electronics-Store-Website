<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMaster.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Electronic_Shop.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 507px;
        background-color: #0099FF;
        color: #000000;
            font-size: large;
        }
    .auto-style9 {
        font-size: xx-large;
        color: #000000;
    }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
    <br />
    <br />
        <strong>
    <span class="auto-style9">Your orders:<br />
        </span>
        <br />
        <span class="auto-style10">You have 48 hours to delete an order if you decided that you don&#39;t want it.<br />
        However, when deleting it too late, we may deliver it to you anyway and you will have to pay for delivery...<br />
        Is there a problem? call: <span class="auto-style11">0502681153</span></span></strong><br />
    <br />
    <strong>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style8" DataSourceID="SqlDataSource1" Height="100px" Width="500px" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Delete" ControlStyle-BackColor="gold" ControlStyle-Font-Size="Large" ControlStyle-Font-Names="Baskerville Old Face" ControlStyle-Font-Bold="true" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Order Price" HeaderText="Order Price" SortExpression="Order Price" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Columns>
        <HeaderStyle BackColor="#666666" ForeColor="Gold" />
        <PagerStyle BackColor="#666666" ForeColor="Gold" />
    </asp:GridView>
        <br />
    </strong>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Total Price:" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT [Name], [Type], [Brand], [Amount], [Order Price], [Date] FROM [Orders] WHERE ([For] = ?)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="x" Name="?" SessionField="UserName" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" Text="You have no orders right now..." Visible="False"></asp:Label>
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
    <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/UsersPages/Search.aspx" Text="Go to search page" />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
