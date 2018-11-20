<%@ Page Title="" Language="C#" MasterPageFile="~/core.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="www._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<h2>Application Names</h2>
	<asp:DropDownList ID="applicationNames" runat="server"></asp:DropDownList>
	<h2>Error List</h2>
	<asp:GridView ID="grid" runat="server"></asp:GridView>
</asp:Content>
