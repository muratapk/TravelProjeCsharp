<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TravelProje2.Ozellik.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ozellikler</h1>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Create.aspx">Veri Kayıt</asp:HyperLink>
    <h1>&nbsp;<asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="OzelId" DataNavigateUrlFormatString="Delete.aspx?Id={0}" DataTextField="OzelId" DataTextFormatString="silme" HeaderText="silme" Text="silme" />
            <asp:HyperLinkField DataNavigateUrlFields="OzelId" DataNavigateUrlFormatString="Edit.aspx?Id={0}" DataTextField="OzelId" DataTextFormatString="duzelt" HeaderText="duzelt" Text="duzelt" />
        </Columns>
        </asp:GridView>
    </h1>
</asp:Content>
