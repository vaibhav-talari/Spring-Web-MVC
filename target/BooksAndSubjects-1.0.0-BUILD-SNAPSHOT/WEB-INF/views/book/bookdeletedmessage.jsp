<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Book</title>
</head>
<body>
<h1>
Book Deleted Successfully!</h1>
<spring:url value="/" var="contextPath" htmlEscape="true" />

<a href="${contextPath}showbooks">Click to Check Books after Deletion</a>
<a href="${contextPath}addbook">Add Book</a>
<a href="${contextPath}/">Main Menu</a>


</body>
</html>
