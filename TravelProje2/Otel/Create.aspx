<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="TravelProje2.Otel.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 336px;
        }
        .auto-style2 {
            width: 336px;
            height: 21px;
        }
        .auto-style3 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Yeni Kayıt</h3>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">Otel Adı</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Lokasyon</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Açıklama</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">Özellikler</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="219px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Konum</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="228px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Index.aspx">Anasayfa Git</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
