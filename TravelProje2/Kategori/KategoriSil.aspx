<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KategoriSil.aspx.cs" Inherits="TravelProje2.Kategori.KategoriSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Kategori Silme</h1>
    <asp:Button ID="Button1" runat="server" Text="Sil" OnClick="Button1_Click" Width="92px" />
    <asp:Button ID="Button2" runat="server" Text="İptal" OnClick="Button2_Click" Width="119px" />
</asp:Content>
