<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="auto.net_Asp.net.kategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <a href="arabalarDetay.aspx?arabaID=<%#Eval("arabaID") %>">
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("arabaMarka") %>'></asp:Label></a>
            &nbsp;--
            <a href="arabalarDetay.aspx?arabaID=<%#Eval("arabaID") %>">
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("arabaModel") %>'></asp:Label></a>
            <br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("arabaYil") %>'></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("arabaKm") %>'></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("arabaHasarKaydi") %>'></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text='<%# Eval("arabaHakkinda") %>'></asp:Label>
            <br />
            <asp:Label ID="Label8" runat="server" Text='<%# Eval("telefonNo") %>'></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text='<%# Eval("arabaFiyat") %>'></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" Text='<%# Eval("arabaTarih") %>'></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text='<%# Eval("arabaSahip") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
