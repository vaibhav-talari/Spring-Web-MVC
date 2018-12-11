<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>BOOK</title>
</head>
<body>
<h1>
Book Saved Successfully!</h1>
<spring:url value="/" var="contextPath" htmlEscape="true" />

<a href="${contextPath}showbooks">AVALIABLE BOOKS</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="${contextPath}addbook">ADD BOOK</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="${contextPath}/">MAIN MENU</a>&nbsp;&nbsp;&nbsp;&nbsp;


</body>
</html>
