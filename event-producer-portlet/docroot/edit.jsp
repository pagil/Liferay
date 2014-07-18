<%@page import="com.liferay.portal.model.PortletPreferences"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

This is the <b>Event Producer</b> portlet Edit Page.<br>
Please, press a button below to fire the action:<br><br>

<portlet:actionURL var="fireActionA_URL" name="fireActionA">
	<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:actionURL>

<aui:form action="<%= fireActionA_URL %>" method="post">
	<aui:button type="submit" value="Fire ActionA"></aui:button>
</aui:form>

<portlet:actionURL var="fireActionB_URL" name="fireActionB">
	<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:actionURL>

<aui:form action="<%= fireActionB_URL %>" method="post">
	<aui:button type="submit" value="Fire ActionB"></aui:button>
</aui:form>

<portlet:actionURL var="fireActionC_URL" name="fireActionC">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:actionURL>

<aui:form action="<%= fireActionC_URL %>" method="post">
	<aui:button type="submit" value="Fire ActionC"></aui:button>
</aui:form>

<portlet:renderURL var="viewFireActionURL">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:renderURL>

<p><a href="<%= viewFireActionURL %>">&larr; Back</a></p>