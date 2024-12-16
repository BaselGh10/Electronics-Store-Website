<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewDevice.aspx.cs" Inherits="Electronic_Shop.ViewDevice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        color: #0000FF;
        font-size: xx-large;
    }
    .auto-style7 {
        font-size: large;
        text-align: center;
    }
    .auto-style8 {
        font-size: large;
        width: 274px;
        height: 71px;
        text-align: center;
    }
    .auto-style9 {
        height: 71px;
        width: 261px;
        text-align: center;
    }
    .auto-style10 {
            font-size: large;
            width: 274px;
            height: 70px;
            text-align: center;
        }
    .auto-style11 {
            height: 70px;
            width: 261px;
            text-align: center;
        }
    .auto-style12 {
        font-size: large;
        color: #0000FF;
    }
        .auto-style14 {
            font-size: medium;
        }
        .auto-style16 {
            height: 76px;
            width: 261px;
            text-align: center;
        }
        .auto-style17 {
            width: 668px;
        }
        .auto-style18 {
            font-size: large;
            width: 274px;
            height: 76px;
            text-align: center;
        }
        .auto-style19 {
            width: 264px;
            text-align: center;
        }
        .auto-style20 {
            margin-left: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
    &nbsp;</p>
<p class="auto-style5">
    <strong>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Font-Names="Baskerville Old Face" Text="Label" BackColor="Blue" ForeColor="Gold"></asp:Label>
    </strong>
</p>
<p class="auto-style5">
    &nbsp;</p>
<p class="auto-style5">
    <table align="center" class="auto-style17">
        <tr>
            <td class="auto-style8"><strong>Type:</strong></td>
            <td class="auto-style9" colspan="2"><strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                </strong></td>
            <td class="auto-style19" rowspan="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" CssClass="auto-style20" Height="300px" Width="300px" />
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Brand:</strong></td>
            <td class="auto-style11" colspan="2"><strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Price:</strong></td>
            <td class="auto-style11" colspan="2"><strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Stock:</strong></td>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>
                <br />
                <br />
                Amount:</strong></td>
            <td class="auto-style16" colspan="2">
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" TextMode="Number" Width="45px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Total price:</strong></td>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label7" runat="server" BackColor="Blue" Font-Bold="True" Font-Size="Large" ForeColor="Gold" Text="Label" Visible="False" Width="70px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button4_Click" Text="Calculate total price" />
            </td>
            <td class="auto-style7" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="4">
            <strong __designer:mapid="13"><span class="auto-style14" __designer:mapid="14">
                <br />
            <asp:Button ID="Button2" runat="server" BackColor="Blue" CssClass="auto-style14" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button2_Click" Text="Buy !" />
            </span></strong>
            </td>
        </tr>
    </table>
</p>
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style5">
            <strong><span class="auto-style14">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Baskerville Old Face" ForeColor="Red" Text="We didn't find this amount of the product..." Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            </span></strong>
        </div>
    </asp:Panel>
    <p>
    <br />
</p>
<p class="auto-style5">
    <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/UsersPages/Result.aspx" Text="Check out other devices " />
</p>
<br />
<br />
</asp:Content>
