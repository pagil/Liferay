
<%@page import="com.liferay.portal.theme.PortletDisplay"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@page import="com.liferay.portal.theme.ThemeDisplay"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<p>This is the <b>Event Consumer</b> portlet.</p>
<%
// Get the Portlet ID for this INSTANTIABLE (multiple instances are allowed on the same page) portlet.
// This Portlet ID allows to show that the Consumer Portlets differ from one another.
ThemeDisplay themeDisplay = (ThemeDisplay)renderRequest.getAttribute(WebKeys.THEME_DISPLAY);
PortletDisplay portletDisplay = themeDisplay.getPortletDisplay();
String portletId = portletDisplay.getId();
%>
<p>Portlet ID = <%= portletId %> </p>

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