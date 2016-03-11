<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<div style="margin-top: 100px; margin-left: 25%;">
	<h1>${User}</h1>
	<h1>
		<spring:message code="welcome" />
	</h1>
	<h2>
		<spring:message code="to" />
	</h2>
	<h3>
		<spring:message code="label.soundStageEntertainment" />
	</h3>
</div>
