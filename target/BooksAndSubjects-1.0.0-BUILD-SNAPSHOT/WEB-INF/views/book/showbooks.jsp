<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<title>Book</title>
</head>

<body>
<h1>
Available Books</h1>
<table border="1" >
<spring:url value="/" var="contextPath" htmlEscape="true"></spring:url>

		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Price</th>
			<th>Volume</th>
			<th>Date</th>
		</tr>
		<c:if test="${empty list}">
			<tr>
				<td colspan="11" align="center">No record found to display.</td>
			</tr>
		</c:if>
	<c:forEach var="bks" items="${list}">
			<tr>
				<td>${bks.bookid}</td>
				<td>${bks.title}</td>
				<td>${bks.price}</td>
				<td>${bks.volume}</td>
				<%-- <td>${bks.year}</td>
				<td>${bks.day}</td>
				<td>${bks.month}</td> --%>
				<td>${bks.publishDate}</td>

			</tr>
	</c:forEach>
</table>
<a href="${contextPath}addbook">Add Book</a>
<a href="${contextPath}/">Main Menu</a></body>
</html>
