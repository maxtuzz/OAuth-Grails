<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
</head>

<body>

<g:if test="${flash.error}">
	<div class="errors">${flash.error}</div>
</g:if>

<oauth:connect provider="facebook">Facebook</oauth:connect><br/>
<oauth:connect provider="twitter">Twitter</oauth:connect><br/>
<oauth:connect provider="linkedin">LinkedIn</oauth:connect><br/>

<g:if test="${data}">
	<div style="margin-top: 20px">
		<h3>${provider} Response</h3>
		<table>
			<thead>
			<tr>
				<th>Key</th>
				<th>Value</th>
			</tr>
			</thead>
			<tbody>
			<g:each in="${data?.keySet()}" var="resp">
				<tr>
					<td>${resp}</td>
					<td>${data[resp]}</td>
				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
</g:if>
</body>
</html>
