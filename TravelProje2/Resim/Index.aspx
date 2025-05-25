<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TravelProje2.Resim.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Resim</h3>
    <a href="Create.aspx">Yeni Kayıt</a>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
