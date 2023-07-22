<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="auto.net_Asp.net.hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <strong>HAKKIMIZDA</strong></p>
<p>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("hakkimizda") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
</p>
</asp:Content>
