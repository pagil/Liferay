<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<!-- Include AlloyUI tag library -->
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<%@ page import="javax.portlet.PortletPreferences" %>

<!-- Include implicit variables into the JSP -->
<!-- Example: renderRequest, portletConfig, portletPreferences, etc  -->
<portlet:defineObjects/>

<%
PortletPreferences prefs = renderRequest.getPreferences();
String greeting = renderRequest.getParameter("greeting"); 
if (greeting != null) {
    prefs.setValue("greeting", greeting);
    prefs.store();
%>

<p>Greeting saved successfully!</p>

<%
}
%>

<%
greeting = (String) prefs.getValue("greeting", "Hello! Welcome to our portal.");
%>

<portlet:renderURL var="editGreetingURL">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:renderURL>

<aui:form action="<%= editGreetingURL %>" method="post">
	<aui:input label="greeting" name="greeting" type="text" value="<%= greeting %>"></aui:input>
	<aui:button type="submit"></aui:button>
</aui:form>

<portlet:renderURL var="viewGreetingURL">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:renderURL>

<p><a href="<%= viewGreetingURL %>">&larr; Back</a></p>