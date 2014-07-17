<%@page import="com.liferay.portal.model.PortletPreferences"%>
<%
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

This is the <b>Event Producer</b> portlet.<br>
Please, press a button below to fire the action:<br><br>

<aui:button name="fireEventA" onClick="alert('EventA fired!');" value="Fire EventA" ></aui:button>

<portlet:actionURL var="fireActionURL">
	<portlet:param name="mvcPath" value="/view.jsp"/>
</portlet:actionURL>

<aui:form action="<%= fireActionURL %>" method="get">
	<aui:button type="submit"></aui:button>
</aui:form>
