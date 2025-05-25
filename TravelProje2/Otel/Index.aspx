<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TravelProje2.Otel.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Otel Listesi</h1>
    <a href="Create.aspx">Yeni Kayıt</a>
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="OtelId" DataNavigateUrlFormatString="Delete.aspx?Id={0}" DataTextField="OtelId" DataTextFormatString="Silme" HeaderText="Silme" Text="Silme" />
            <asp:HyperLinkField DataNavigateUrlFields="OtelId" DataNavigateUrlFormatString="Edit.aspx?Id={0}" DataTextField="OtelId" DataTextFormatString="Düzelt" HeaderText="Düzelt" Text="Düzelt" />
        </Columns>
    </asp:GridView>
</asp:Content>
