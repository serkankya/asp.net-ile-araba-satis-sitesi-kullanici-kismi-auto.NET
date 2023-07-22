<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="gununAraci.aspx.cs" Inherits="auto.net_Asp.net.gununAraci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 125px;
            height: 67px;
        }
        .marka {
    font-family: "Times New Roman", Times, serif;
    font-size: xx-large;
    font-weight: 800;
    font-style: normal;
    font-variant: normal;
    text-transform: uppercase;
    color: #0000FF;
    text-align: left;
}

.model {
    font-family: "Times New Roman", Times, serif;
    font-size: x-large;
    font-weight: 400;
    font-style: normal;
    font-variant: normal;
    text-transform: uppercase;
    color: #0000FF;
}

        .auto-style8 {
            text-align: left;
            font-weight: bold;
            height: 23px;
            width: 125px;
            font-size:x-large;
        }
        
.veri {
    font-size: large;
    font-weight: 500
}

        .auto-style14 {
            text-align: center;
            font-weight: bold;
            width: 125px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table style="width:100%;">
            <tr>
                <td class="auto-style10" style="border-width: 1px; border-bottom-style: solid;"><strong><a href='arabalarDetay.aspx?arabaID=<%#Eval("arabaID") %>'>
                    <asp:Label ID="Label2" runat="server" CssClass="marka" Text='<%# Eval("arabaMarka") %>'></asp:Label>
                    <asp:Label ID="Label4" runat="server" CssClass="model" Text='<%# Eval("arabaModel") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Çıkış Yılı :
                    <asp:Label ID="Label5" runat="server" BorderStyle="Inset" CssClass="veri" Text='<%# Eval("arabaYil") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Kilometre :
                    <asp:Label ID="Label6" runat="server" BorderStyle="Inset" CssClass="veri" Height="19px" Text='<%# Eval("ArabaKm") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Hasar Kaydı :&nbsp;
                    <asp:Label ID="Label7" runat="server" BorderStyle="Inset" CssClass="veri" Text='<%# Eval("arabaHasarKaydi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Araç Hakkında :
                    <br />
                    <asp:Label ID="Label8" runat="server" BorderStyle="Inset" CssClass="veri" Text='<%# Eval("ArabaHakkinda") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">İletişim :
                    <asp:Label ID="Label9" runat="server" BorderStyle="Inset" CssClass="veri" Text='<%# Eval("telefonNo") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Fiyat :
                    <asp:Label ID="Label11" runat="server" BorderStyle="Inset" CssClass="veri" Text='<%# Eval("arabaFiyat") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">İlan Tarihi :
                    <asp:Label ID="Label12" runat="server" BorderStyle="Inset" CssClass="veri" Text='<%# Eval("arabaTarih") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Arabanın Sahibi :
                    <asp:Label ID="Label10" runat="server" BorderStyle="Inset" CssClass="veri" Text='<%# Eval("arabaSahip") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-bottom-style: dashed; border-bottom-width: 1px">&nbsp;<asp:Image ID="Image3" runat="server" Height="480px" ImageUrl="~/resimler/66b9842-2023-03-20-183823.jpg" Width="450px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
