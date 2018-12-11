<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<title>Subjects</title>
</head>

<body>
<h1>
Available Subjects</h1>
<table border="1" >
<spring:url value="/" var="contextPath" htmlEscape="true"></spring:url>

		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>duration</th>
		</tr>
		<c:if test="${empty list}">
			<tr>
				<td colspan="11" align="center">No record found to display.</td>
			</tr>
		</c:if>
	<c:forEach var="subs" items="${list}">
			<tr>
				<td>${subs.subjectid}</td>
				<td>${subs.subtitle}</td>
				<td>${subs.duration}</td>

			</tr>
	</c:forEach>
</table>
<a href="${contextPath}addsubject">Add Subject</a>
<a href="${contextPath}/">Main Menu</a></body>
</html>
