<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="TravelProje2.Ozellik.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            height: 21px;
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Yeni Kayıt</h1>
    <table style="width: 100%;">
        
        <tr>
            <td class="auto-style2">OzelAd</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Ozelsimge</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
