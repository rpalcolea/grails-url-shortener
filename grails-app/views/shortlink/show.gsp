
<%@ page import="slink.Shortlink" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shortlink.label', default: 'Shortlink')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shortlink" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shortlink" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shortlink">
			
				<g:if test="${shortlinkInstance?.shortLink}">
				<li class="fieldcontain">
					<span id="shortLink-label" class="property-label"><g:message code="shortlink.shortLink.label" default="Short Link" /></span>
					
						<span class="property-value" aria-labelledby="shortLink-label"><g:fieldValue bean="${shortlinkInstance}" field="shortLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shortlinkInstance?.targetUrl}">
				<li class="fieldcontain">
					<span id="targetUrl-label" class="property-label"><g:message code="shortlink.targetUrl.label" default="Target Url" /></span>
					
						<span class="property-value" aria-labelledby="targetUrl-label"><g:fieldValue bean="${shortlinkInstance}" field="targetUrl"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${shortlinkInstance?.id}" />
					<g:link class="edit" action="edit" id="${shortlinkInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
