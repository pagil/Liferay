<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

This is the <b>Client Producer</b> portlet.

<script type="text/javascript">
function fireEventPalnTravel() {
	Liferay.fire(
		'planTravel', {
			origin: 'Minsk',
			destination: 'Melbourne'
		});
}
</script>

<aui:button onClick="fireEventPalnTravel();" value="Plan travel"></aui:button>
