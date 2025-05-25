<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TravelProje2.Resim.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Resim</h3>
    <a href="Create.aspx">Yeni Kayıt</a>
    <asp:GridView ID="GridView1" runat="server" Height="161px" Width="350px">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ResimId" DataNavigateUrlFormatString="Delete.aspx?Id={0}" DataTextField="ResimId" DataTextFormatString="Silme" HeaderText="Silme" Text="Silme" />
            <asp:HyperLinkField DataNavigateUrlFields="ResimId" DataNavigateUrlFormatString="Edit.aspx?Id={0}" DataTextField="ResimId" DataTextFormatString="Düzelt" HeaderText="Düzelt" Text="Düzelt" />
            <asp:ImageField DataAlternateTextField="ResimYolu" DataImageUrlField="ResimYolu" DataImageUrlFormatString="../Images/{0}">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</asp:Content>
