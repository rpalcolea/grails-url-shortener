<%@ page import="slink.Shortlink" %>


<div class="fieldcontain ${hasErrors(bean: shortlinkInstance, field: 'targetUrl', 'error')} ">
	<label for="targetUrl">
		<g:message code="shortlink.targetUrl.label" default="Target Url" />
		
	</label>
	<g:textField name="targetUrl"  value="${shortlinkInstance?.targetUrl}"/>
</div>

