<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="auto.net_Asp.net.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td>Mesaj bırakarak bizimle iletişime geçebilirsiniz.</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Ad - Soyad : </td>
        <td>
            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Konu Başlığı : </td>
        <td>
            <asp:TextBox ID="txtKonu" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mesajınız : </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtMesaj" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail Adresiniz : </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
