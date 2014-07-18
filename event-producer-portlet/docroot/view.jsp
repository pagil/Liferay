<%@page import="java.util.Map"%>
<%@page import="javax.portlet.PortletPreferences"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

This is the <b>Event Producer</b> portlet View Page.<br>
<%
String value = request.getParameter("id1");
if (value == null) {
%>
<p style="color:red;">You have not fired any action.</p>
<%
} else {
%>
<p style="color:green;">You have fired action. Render parameter value is set to:</p>
<p style="font-weight:bold;color:green;"><%= value %></p>
<%
}
%>
<portlet:renderURL var="editFireActionURL">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:renderURL>

<p><a href="<%= editFireActionURL %>">Fire Action</a></p>