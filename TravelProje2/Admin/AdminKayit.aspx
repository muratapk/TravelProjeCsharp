<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminKayit.aspx.cs" Inherits="TravelProje2.Admin.AdminKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 389px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Admin Ekle</h1>

    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">Kulllanıcı Adını Girin</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Şifrenizigi Girin</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Yetkinizi Girin</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="183px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" Width="103px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
