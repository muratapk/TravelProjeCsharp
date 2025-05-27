<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="TravelProje2.Resim.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            width: 272px;
        }
        .auto-style3 {
            height: 21px;
            width: 272px;
        }
        .auto-style4 {
            height: 21px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Düzeltme</h3>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style2">Otel Adı</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Resim Adı</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">Resim Yolu</td>
            <td class="auto-style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="Düzelt" Width="113px" />
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
