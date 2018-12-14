<%@ Page Title="" Language="C#" MasterPageFile="~/core.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="www._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script>
		$(document).ready(function () {
			$('table').DataTable({
				"order": [[0, "desc"]]
			});
		});
	</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<!--
		<h2>Application Names</h2>
		<asp:DropDownList ID="applicationNames" runat="server"></asp:DropDownList>
	-->

	<asp:Repeater ID="repeater" runat="server">
		<HeaderTemplate>
			<table>
				<thead>
					<tr>
						<%--<th>Id</th>--%>
						<th>TimeUtc</th>
						<th>Occurrences</th>
						<th>Application</th>
						<th>Host</th>
						<th>Type</th>
						<th>Message</th>
						<%--<th>User</th>--%>
						<th>StatusCode</th>
					</tr>
				</thead>
				<tbody>
		</HeaderTemplate>

		<ItemTemplate>
			<tr>
				<%--<td><%# Eval("ErrorId") %></td>--%>
				<td><%# Eval("TimeUtc") %></td>
				<td><%# Eval("Occurrences") %></td>
				<td><%# Eval("Application") %></td>
				<td><%# Eval("Host") %></td>
				<td><%# Eval("Type") %></td>
				<td><a href="#"><%# Eval("Message") %></a></td>
				<%--<td><%# Eval("User") %></td>--%>
				<td><%# Eval("StatusCode") %></td>
			</tr>
		</ItemTemplate>

		<FooterTemplate>
			</tbody>
				</table>
		</FooterTemplate>
	</asp:Repeater>

</asp:Content>
