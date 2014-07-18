<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

This is the <b>Client Consumer</b> portlet.

<script type="text/javascript">
	Liferay.on(
		'planTravel',
		function(event) {
			alert(event.origin + '\n' + event.destination);		
		}
	);
</script>