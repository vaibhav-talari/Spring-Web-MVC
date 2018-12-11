<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>SUBJECT</title>
</head>
<body>
<h1>
Subject Deleted Successfully</h1>
<spring:url value="/" var="contextPath" htmlEscape="true" />

<a href="${contextPath}showsubjects">AFTER DELETION</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="${contextPath}addsubject">ADD SUBJECT</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="${contextPath}/">MAIN MENU</a>
</body>
</html>
