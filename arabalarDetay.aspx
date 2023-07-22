<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="arabalarDetay.aspx.cs" Inherits="auto.net_Asp.net.arabalarDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;-
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumSahip") %>'></asp:Label>
            &nbsp;--
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("yorumTarih") %>'></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
        <div style="background-color:aqua">
            YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
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
                <td>İçerik : </td>
                <td><strong>
                    <asp:TextBox ID="txtIcerik" runat="server"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td>Mail&nbsp; : </td>
                <td><strong>
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GÖNDER" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </asp:Panel>
    </strong>
</asp:Content>
