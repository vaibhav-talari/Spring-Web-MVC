<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Book</title>
</head>
<body>
<h1>
	Add book details!  
</h1>

<form:form method="POST" action="addsubject" modelAttribute="subjectsadd" >
	<table>
		<tr>
			<td><form:label path="subjectid">Subject ID:</form:label></td>
			<td><form:input path="subjectid"/></td>
		</tr>
		<tr>
			<td><form:label path="subtitle">Subject Title:</form:label></td>
			<td><form:input path="subtitle"/></td>
		</tr>
		<tr>
			<td><form:label path="duration">Subject Duration:</form:label></td>
			<td><form:input path="duration"/></td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="Add Subject"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="Reset Fields"/> &nbsp;&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
</table>

</form:form>
</body>
</html>
