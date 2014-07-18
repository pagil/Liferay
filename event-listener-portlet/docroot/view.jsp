<%@page import="com.liferay.portal.theme.PortletDisplay"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@page import="com.liferay.portal.theme.ThemeDisplay"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />


<%
// Get the Portlet ID for this INSTANCIABLE (several instances are allowed on a page) portlet.
ThemeDisplay themeDisplay= (ThemeDisplay)renderRequest.getAttribute(WebKeys.THEME_DISPLAY);
PortletDisplay portletDisplay= themeDisplay.getPortletDisplay();
String portletId= portletDisplay.getId();
%>

<p>This is the <b>Event Listener</b> portlet View Page.</p>
<p style="color:blue;">(PortletID=<%= portletId %>)</p>
<p>This portlet displays Event information produced by <b>Event Producer</b> portlet.</p>

<%
String value = request.getParameter("id1");
if (value == null) {
%>
<p style="color:red;">The event has not been fired yet.</p>
<%
} else {
%>
<p style="color:green;">The event has been fired:</p>
<p style="font-weight:bold;color:green;"><%= value %></p>
<%
}
%>