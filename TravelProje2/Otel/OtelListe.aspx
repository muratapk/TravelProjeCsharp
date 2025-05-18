<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="OtelListe.aspx.cs" Inherits="TravelProje2.Otel.OtelListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Otel Listesi</h1>
    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
