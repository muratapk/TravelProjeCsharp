<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminListe.aspx.cs" Inherits="TravelProje2.Admin.AdminListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Admin Listesi      
    </h1>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/AdminKayit.aspx">Yeni Kayıt</asp:HyperLink>
     <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="402px">
         <Columns>
             <asp:HyperLinkField DataNavigateUrlFields="AdminId" DataNavigateUrlFormatString="AdminSil.aspx?Id={0}" DataTextField="AdminId" DataTextFormatString="Silme" HeaderText="Silme" Text="Silme" />
             <asp:HyperLinkField DataNavigateUrlFields="AdminId" DataNavigateUrlFormatString="AdminDuzelt.aspx?Id={0}" DataTextField="AdminId" DataTextFormatString="Düzeltme" HeaderText="Düzelt" Text="Düzelt" />
         </Columns>
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
         <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
         <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#FFF1D4" />
         <SortedAscendingHeaderStyle BackColor="#B95C30" />
         <SortedDescendingCellStyle BackColor="#F1E5CE" />
         <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>
