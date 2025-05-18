<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminSil.aspx.cs" Inherits="TravelProje2.Admin.AdminSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Admin Silme</h1>
    <asp:Button ID="Button1" runat="server" Text="Sil" OnClick="Button1_Click" Width="275px" />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="İptal Et" Width="181px" />
</asp:Content>
