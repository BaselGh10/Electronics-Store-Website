<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMaster.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Electronic_Shop.Result1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            color: #FFD700;
            margin-left: 507px;
            background-color: #0066FF;
        }
    .auto-style9 {
        color: #0000FF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
        <br />
<p class="auto-style5">
    <strong>*If you click the fields<span class="auto-style9"> (Price Or stock)</span>, the results will be sorted by (price or stock)... from high to low or the opposite*</strong></p>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style8" DataSourceID="SqlDataSource1" Font-Bold="True" ForeColor="Gold" Height="100px" Width="500px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="Large">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="View" ControlStyle-BackColor="gold" ControlStyle-Font-Size="Large" ControlStyle-Font-Names="Baskerville Old Face" ControlStyle-Font-Bold="true" />
                    <asp:BoundField DataField="Name" HeaderText="Name"  />
                    <asp:BoundField DataField="Type" HeaderText="Type"  />
                    <asp:BoundField DataField="Brand" HeaderText="Brand"   />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                </Columns>
                <HeaderStyle BackColor="#666666" />
                <PagerStyle BackColor="#666666" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Devices] WHERE (([Brand] = ?) AND ([Type] = ?) AND ([Price] &lt;= ?) AND ([Price] &gt;= ?) AND ([Stock] &gt; ?))">
                <SelectParameters>
                    <asp:SessionParameter Name="Brand" SessionField="Brand" Type="String" />
                    <asp:SessionParameter Name="Type" SessionField="Type" Type="String" />
                    <asp:SessionParameter Name="Price" SessionField="MaxPrice" Type="Int32" />
                    <asp:SessionParameter Name="Price2" SessionField="MinPrice" Type="Int32" />
                    <asp:SessionParameter DefaultValue="0" Name="Stock" SessionField="MIn" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="No results..." Visible="False"></asp:Label>
        </p>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
            <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/UsersPages/Search.aspx" Text="Back" />
        </p>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
            &nbsp;</p>
    </div>
</asp:Content>
