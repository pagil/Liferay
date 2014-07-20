<%@page import="com.liferay.portal.theme.PortletDisplay"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@page import="com.liferay.portal.theme.ThemeDisplay"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

This is the <b>Client Consumer</b> portlet.

<%
// Get the Portlet ID to demonstrate the difference between INSTNACIABLE Comsumer Portlets.
ThemeDisplay themeDisplay = (ThemeDisplay)renderRequest.getAttribute(WebKeys.THEME_DISPLAY);
PortletDisplay portletDisplay = themeDisplay.getPortletDisplay();
String portletId = portletDisplay.getId();
%>

<p style="color:blue;">Portlet ID = <%= portletId %> </p>
<p id='messagePlaceHolder<portlet:namespace />' style="color:green;"></p>
<script type="text/javascript">
	Liferay.on(
		'CUSTOM_ACTION',
		function(event) {
			printOutMessage<portlet:namespace />(event);		
		} 
	);

	function printOutMessage<portlet:namespace />(event) {
		var el_id = 'messagePlaceHolder<portlet:namespace />';
		var p_el = document.getElementById(el_id);
		var resultMessage = '<%= portletId %>';
		resultMessage += '<br>'+event.ACTION_ID;
		resultMessage += '<br>'+JSON.stringify(event.ACTION_VALUE);
		p_el.innerHTML = resultMessage;
	}
</script>