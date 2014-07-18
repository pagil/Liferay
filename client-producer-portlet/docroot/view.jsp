<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

<p>This is the <b>Client Producer</b> portlet.</p>

<script type="text/javascript">
function fireActionA() {
	Liferay.fire(
		'CUSTOM_ACTION', 
		{
			ACTION_ID:'ActionA',
			ACTION_VALUE:{"NUM_OF_ACCOUNTS":29814,"TOTAL_PAID":241863.6900000005,"POSTAL":3000,"TOTAL_NOT_PAID":29205.68999999981}
		});
}
function fireActionB() {
	Liferay.fire(
		'CUSTOM_ACTION', 
		{
			ACTION_ID:'ActionB',
			ACTION_VALUE:{"NUM_OF_ACCOUNTS":5404,"TOTAL_PAID":33960.07000000003,"POSTAL":3001,"TOTAL_NOT_PAID":6758.070000000018}
		});
}
function fireActionC() {
	Liferay.fire(
		'CUSTOM_ACTION', 
		{
			ACTION_ID:'ActionC',
			ACTION_VALUE:{"NUM_OF_ACCOUNTS":3903,"TOTAL_PAID":38716.60999999999,"POSTAL":3002,"TOTAL_NOT_PAID":3118.41}
		});
}
</script>

<p><aui:button onClick="fireActionA();" value="Fire ActionA"></aui:button></p>
<p><aui:button onClick="fireActionB();" value="Fire ActionB"></aui:button></p>
<p><aui:button onClick="fireActionC();" value="Fire ActionC"></aui:button></p>
