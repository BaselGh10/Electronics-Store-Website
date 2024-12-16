<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Electronic_Shop.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 48%;
            background-color: #0000FF;
            height: 556px;
        }
        .auto-style7 {
        width: 172px;
        font-size: large;
        color: #FFD700;
        text-decoration: underline;
        text-align: center;
    }
        .auto-style8 {
            width: 529px;
        text-align: center;
    }
        .auto-style11 {
            text-decoration: underline;
        }
        .auto-style17 {
            width: 529px;
            height: 45px;
            text-align: center;
        }
        .auto-style18 {
            width: 172px;
            font-size: large;
            color: #FFD700;
            text-decoration: underline;
            height: 45px;
            text-align: center;
        }
        .auto-style19 {
            width: 172px;
            font-size: large;
            color: #FFD700;
            text-decoration: underline;
            height: 8px;
            text-align: center;
        }
        .auto-style20 {
            width: 172px;
            font-size: large;
            color: #FFD700;
            text-decoration: underline;
            height: 5px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        <table align="center" class="auto-style6">
            <tr>
                <td class="auto-style18" style="font-family: 'Baskerville Old Face'"><strong>Name:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="font-family: 'Baskerville Old Face'"><strong>E-Mail:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="300px" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="font-family: 'Baskerville Old Face'"><strong>Subject:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox3" runat="server" Width="300px" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" style="font-family: 'Baskerville Old Face'"><strong>
                    <br />
                    <br />
                    The Message:</strong></td>
                <td class="auto-style8" rowspan="6"><strong>
                    <br class="auto-style11" />
                    <asp:TextBox ID="TextBox4" runat="server" Height="250px" TextMode="MultiLine" Width="400px" AutoCompleteType="Disabled"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" BackColor="Gold" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Blue" Text="Send" OnClick="Button3_Click" />
                    <br class="auto-style11" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Gold" Text="Thanks! we will reply soon..." Visible="False"></asp:Label>
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style20" style="font-family: 'Baskerville Old Face'"><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Baskerville Old Face'"><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Baskerville Old Face'"><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Baskerville Old Face'"><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Baskerville Old Face'"><strong></strong></td>
            </tr>
            </table>
    </p>
<p class="auto-style5">
        &nbsp;</p>
<p class="auto-style5">
        <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/Main.aspx" Text="Back" Width="90px" />
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
