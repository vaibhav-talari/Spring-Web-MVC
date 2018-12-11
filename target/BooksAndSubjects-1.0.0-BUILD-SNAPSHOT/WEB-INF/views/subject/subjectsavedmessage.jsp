<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Subject</title>
</head>
<body>
<h1>
Subject Saved Successfully!</h1>
<spring:url value="/" var="contextPath" htmlEscape="true" />

<a href="${contextPath}showsubjects">Click to Check Available Subjects</a>
<a href="${contextPath}addsubject">Add Subject</a>
<a href="${contextPath}/">Main Menu</a>


</body>
</html>
