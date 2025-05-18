<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KategoriListe.aspx.cs" Inherits="TravelProje2.Kategori.KategoriListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Kategori Liste</h1>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Kategori/KategoriKayit.aspx">Yeni Kayıt</asp:HyperLink>
    <asp:GridView ID="GridView1" runat="server" Width="448px">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="KategoriId" DataNavigateUrlFormatString="KategoriSil.aspx?Id={0}" DataTextField="KategoriId" DataTextFormatString="Silme" HeaderText="Silme" Text="Silme" />
            <asp:HyperLinkField DataNavigateUrlFields="KategoriId" DataNavigateUrlFormatString="KategoriDuzelt.aspx?Id={0}" DataTextField="KategoriId" DataTextFormatString="Düzelt" HeaderText="Düzelt" Text="Düzelt" />
        </Columns>
    </asp:GridView>

</asp:Content>
