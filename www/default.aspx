<%@ Page Title="" Language="C#" MasterPageFile="~/core.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="www._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>
		$(document).ready(function () {
			$('table').DataTable();
		});
	</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<h2>Application Names</h2>
	<asp:DropDownList ID="applicationNames" runat="server"></asp:DropDownList>
	<h2>Error List</h2>

	<asp:Repeater ID="repeater" runat="server">
		<HeaderTemplate>

			<table>
				<thead>
					<tr>
						<th>Id</th>
						<th>Application</th>
						<th>Host</th>
						<th>Type</th>
						<th>Message</th>
						<th>User</th>
						<th>StatusCode</th>
						<th>TimeUtc</th>
					</tr>
				</thead>
				<tbody>
		</HeaderTemplate>

		<ItemTemplate>
			<tr>
				<td><%# Eval("ErrorId") %></td>
				<td><%# Eval("Application") %></td>
				<td><%# Eval("Host") %></td>
				<td><%# Eval("Type") %></td>
				<td><%# Eval("Message") %></td>
				<td><%# Eval("User") %></td>
				<td><%# Eval("StatusCode") %></td>
				<td><%# Eval("TimeUtc") %></td>
			</tr>
		</ItemTemplate>

		<FooterTemplate>
			</tbody>
				</table>
		</FooterTemplate>
	</asp:Repeater>

</asp:Content>
