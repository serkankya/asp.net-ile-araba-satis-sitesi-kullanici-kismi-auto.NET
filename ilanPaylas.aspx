<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="ilanPaylas.aspx.cs" Inherits="auto.net_Asp.net.ilanPaylas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" type="text/css" href="animasyon.css">
    <style type="text/css">
        
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            height: 40px;
        }
        .auto-style9 {
            height: 40px;
            text-align: right;
        }
    .auto-style10 {
        height: 23px;
    }
    .auto-style11 {
        height: 23px;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td>İLAN PAYLAŞ</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Araç Marka : </td>
        <td>
            <asp:TextBox ID="txtMarka" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Araç Model : </td>
        <td>
            <asp:TextBox ID="txtModel" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9" >Yıl :&nbsp; </td>
        <td class="auto-style8" >
            <asp:TextBox ID="txtYil" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" >Kilometre : </td>
        <td >
            <asp:TextBox ID="txtKm" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Hasar Kaydı : </td>
        <td>
            <asp:TextBox ID="txtHasarKaydi" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Araç Hakkında : </td>
        <td>
            <asp:TextBox ID="txtHakkinda" runat="server" TextMode="MultiLine "></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" >Telefon Numarası : </td>
        <td >
            <asp:TextBox ID="txtTelNo" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">İlanın Sahibi : </td>
        <td>
            <asp:TextBox ID="txtSahip" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" >Mail Adresi : </td>
        <td >
            <asp:TextBox ID="txtMail" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Fiyat : </td>
        <td>
            <asp:TextBox ID="txtFiyat" runat="server" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Resim : </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server"/>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Araç Kategorisi : </td>
        <td class="auto-style10">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="btn1">
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnPaylas" runat="server" OnClick="btnPaylas_Click" Text="İlan Paylaş" CssClass="btn1" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
