<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

This is the <b>Event Sender</b> portlet.

<%
String value = renderRequest.getParameter("empinfo");
if (value == null || value.isEmpty()) {
%>
<p style="color: red;">No events received.</p>
<%
} else {
%>
<p style="color: green;">Event received:</p>
<p style="font-weight: bold; color: green;"><%= value %></p>
<%
}
%>

<portlet:renderURL var="sendEventURL">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:renderURL>

<p><a href="<%= sendEventURL %>">Send event</a></p>