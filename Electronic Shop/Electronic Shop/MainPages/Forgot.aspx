<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.Master" AutoEventWireup="true" CodeBehind="Forgot.aspx.cs" Inherits="Electronic_Shop.Forgot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
        <br />
        <span class="auto-style6"><strong style="font-family: 'baskerville Old Face'">
        <br />
        Hello </strong></span><strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Font-Names="Baskerville Old Face" ForeColor="Blue" Text="Label"></asp:Label>
        <br />
        </strong>
        <br />
        <strong><span class="auto-style7" style="font-family: 'baskerville Old Face'">Forgot your password? No problem, answer your secret question to make a new one:<br />
        <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Width="270px">
                <asp:ListItem>What is your favorite color ?</asp:ListItem>
                <asp:ListItem>Who is your favorite actor ?</asp:ListItem>
                <asp:ListItem>What is your favorite cartoon character ?</asp:ListItem>
            </asp:DropDownList>
        <br />
        <br />
        <br />
        Answer here:<br />
        <br />
&nbsp;</span><asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" Width="196px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Baskerville Old Face" ForeColor="Blue" Text="Wrong !" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" OnClick="Button3_Click" Text="Continue" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Baskerville Old Face" Font-Size="Large" ForeColor="Gold" PostBackUrl="~/MainPages/LogIn.aspx" Text="Back" />
        <br class="auto-style7" />
        <br />
        <br />
        <br />
        <br />
        <br />
        </strong>
        <br />
        <br />
    </div>
</asp:Content>
