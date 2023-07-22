<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="auto.net_Asp.net.main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="label.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style8 {
            text-align: left;
            font-weight: bold;
            height: 23px;
            width: 125px;
            font-size:x-large;
        }
        .auto-style10 {
            width: 125px;
            height: 67px;
        }
        .auto-style11 {
            text-align: left;
            font-weight: bold;
            width: 125px;
        }
        .auto-style12 {
            text-align: left;
            font-weight: bold;
            width: 140px;
            height:auto;
        }
        .auto-style13 {
            text-align: left;
            font-weight: bold;
            width: 125px;
            height: 51px;
        }
        .auto-style14 {
            text-align: center;
            font-weight: bold;
            width: 125px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList2" CssClass="dataList" runat="server" style="max-height: 400px; width:485px; overflow-y: auto;" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" >
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td style="border-width: 1px; border-bottom-style: solid;" class="auto-style10"><strong><a href='arabalarDetay.aspx?arabaID=<%#Eval("arabaID") %>'>
                        <asp:Label ID="Label2" runat="server" CssClass="marka" Text='<%# Eval("arabaMarka") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" CssClass="model" Text='<%# Eval("arabaModel") %>'></asp:Label>
                        </a> </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Çıkış Yılı : 
                        <asp:Label ID="Label5" runat="server" BorderStyle="Inset" Text='<%# Eval("arabaYil") %>' CssClass="veri"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Kilometre : 
                        <asp:Label ID="Label6" runat="server" BorderStyle="Inset" Text='<%# Eval("ArabaKm") %>' CssClass="veri" Height="19px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Hasar Kaydı :&nbsp; 
                        <asp:Label ID="Label7" runat="server" BorderStyle="Inset" Text='<%# Eval("arabaHasarKaydi") %>' CssClass="veri"></asp:Label>
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
                        <asp:Label ID="Label9" runat="server" BorderStyle="Inset" Text='<%# Eval("telefonNo") %>' CssClass="veri"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Fiyat :
                        <asp:Label ID="Label11" runat="server" BorderStyle="Inset" Text='<%# Eval("arabaFiyat") %>' CssClass="veri"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">İlan Tarihi :
                        <asp:Label ID="Label12" runat="server" BorderStyle="Inset" Text='<%# Eval("arabaTarih") %>' CssClass="veri"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="border-bottom-style: dashed; border-bottom-width: 1px">Arabanın Sahibi :
                        <asp:Label ID="Label10" runat="server" BorderStyle="Inset" Text='<%# Eval("arabaSahip") %>' CssClass="veri"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" style="border-bottom-style: dashed; border-bottom-width: 1px">&nbsp;<asp:Image ID="Image3" runat="server" Height="480px" Width="450px" ImageUrl='<%# Eval("arabaResim") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>

</asp:Content>
