
<%@ page import="slink.Shortlink" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shortlink.label', default: 'Shortlink')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shortlink" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shortlink" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="shortLink" title="${message(code: 'shortlink.shortLink.label', default: 'Short Link')}" />
					
						<g:sortableColumn property="targetUrl" title="${message(code: 'shortlink.targetUrl.label', default: 'Target Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shortlinkInstanceList}" status="i" var="shortlinkInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shortlinkInstance.id}">${fieldValue(bean: shortlinkInstance, field: "shortLink")}</g:link></td>
					
						<td>${fieldValue(bean: shortlinkInstance, field: "targetUrl")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shortlinkInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
