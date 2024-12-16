<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="ManagerPage.aspx.cs" Inherits="Electronic_Shop.ManagerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            color: #0033CC;
        }
        .auto-style7 {
            font-size: large;
            color: #0000FF;
        }
        .auto-style8 {
            font-size: large;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <br />
        <br />
        <br />
        <span class="auto-style3"><strong>What do you want to do </strong></span><strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" ForeColor="Blue" Text="Label"></asp:Label>
        </strong><span class="auto-style3"><strong>&nbsp;?</strong></span><strong><br class="auto-style3" />
        <br />
        <br />
        </strong>
        <table class="auto-style4">
            <tr>
                <td><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Add a new product"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Add on our devices"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Remove number of devices"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Remove a product"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp; Name: </span>
                    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6"></asp:TextBox>
                    </strong></td>
                <td><strong><span class="auto-style6">&nbsp;&nbsp;&nbsp; Name: </span>
                    <asp:TextBox ID="TextBox6" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6"></asp:TextBox>
                    </strong></td>
                <td><strong><span class="auto-style6">&nbsp;&nbsp;&nbsp; Name: </span>
                    <asp:TextBox ID="TextBox8" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6"></asp:TextBox>
                    </strong></td>
                <td><strong><span class="auto-style6">Name: </span>
                    <asp:TextBox ID="TextBox10" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><span class="auto-style6">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Type: </span>
                    <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6"></asp:TextBox>
                    </strong></td>
                <td><strong><span class="auto-style6">Amount: </span>
                    <asp:TextBox ID="TextBox7" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6" TextMode="Number"></asp:TextBox>
                    </strong></td>
                <td><strong><span class="auto-style6">Amount: </span>
                    <asp:TextBox ID="TextBox9" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6" TextMode="Number"></asp:TextBox>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><span class="auto-style6">&nbsp;&nbsp;&nbsp; Brand: </span>
                    <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6"></asp:TextBox>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button4_Click" Text="Remove" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><span class="auto-style6">&nbsp;&nbsp;&nbsp; &nbsp; Price: </span>
                    <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6" TextMode="Number"></asp:TextBox>
                    </strong></td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button2_Click" Text="Add" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button3_Click" Text="Remove" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><span class="auto-style6">&nbsp;Amount: </span>
                    <asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6" TextMode="Number"></asp:TextBox>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp; <span class="auto-style6">&nbsp;<strong>Picture:</strong></span><strong>
                    <asp:TextBox ID="TextBox11" runat="server" AutoCompleteType="Disabled" CssClass="auto-style6"></asp:TextBox>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button1_Click" Text="Add" />
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2"><strong>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style8" PostBackUrl="~/ManagersPages/AddManager.aspx">Add Manager</asp:LinkButton>
                    <span class="auto-style7">&nbsp;&nbsp; /&nbsp;&nbsp; </span>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style8" PostBackUrl="~/ManagersPages/RemoveManager.aspx">Remove Manager</asp:LinkButton>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button5_Click" PostBackUrl="~/ManagersPages/ManagerLogIn.aspx" Text="Back" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
