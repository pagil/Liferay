<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects/>

<portlet:actionURL var="sendEventA_URL" name="sendEventA">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:actionURL>

<aui:form action="<%= sendEventA_URL %>" method="post">
	<aui:button type="submit" value="Send EventA"></aui:button>
</aui:form>

<portlet:actionURL var="sendEventB_URL" name="sendEventB">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:actionURL>

<aui:form action="<%= sendEventB_URL %>" method="post">
	<aui:button type="submit" value="Send EventB"></aui:button>
</aui:form>

<portlet:actionURL var="sendEventC_URL" name="sendEventC">
	<portlet:param name="mvcPath" value="/edit.jsp"/>
</portlet:actionURL>

<aui:form action="<%= sendEventC_URL %>" method="post">
	<aui:button type="submit" value="Send EventC"></aui:button>
</aui:form>

<portlet:renderURL var="viewPageURL">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:renderURL>

<p><a href="<%= viewPageURL %>">&larr; Back</a></p>