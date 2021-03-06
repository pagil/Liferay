<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<!-- Include AlloyUI tag library -->
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<%@ page import="javax.portlet.PortletPreferences" %>

<!-- Include implicit variables into the JSP -->
<!-- Example: renderRequest, portletConfig, portletPreferences, etc  -->
<portlet:defineObjects/>

<%
PortletPreferences prefs = renderRequest.getPreferences();
String greeting = (String) prefs.getValue("greeting", "Hello! Welcome to our portal.");
%>

<portlet:actionURL var="editGreetingURL" name="setGreeting">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:actionURL>

<aui:form action="<%= editGreetingURL %>" method="post">
	<aui:input label="greeting" name="greeting" type="text" value="<%= greeting %>"></aui:input>
	<aui:button type="submit" value="Set new greeting"></aui:button>
</aui:form>

<portlet:actionURL var="sentEmailURL" name="sendEmail">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:actionURL>

<aui:form action="<%= sentEmailURL %>" method="post">
	<aui:input label="email" name="email" type="text"></aui:input>
	<aui:button type="submit" value="Send email"></aui:button>
</aui:form>

<portlet:renderURL var="viewGreetingURL">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:renderURL>

<p><a href="<%= viewGreetingURL %>">&larr; Back</a></p>