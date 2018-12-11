<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>SUBJECT</title>
</head>
<body>
<h1>
ENTER SUBJECT DETAILS!  
</h1>
<form:form method="POST" action="addsubject" modelAttribute="subjectsadd" >
	<table>
		<tr>
			<td><form:label  path="subjectid">SUBJECT-ID:</form:label ></td>
			<td><form:input  path="subjectid"/></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
		<tr>
			<td><form:label path="subtitle">SUBJECT-TITLE:</form:label></td>
			<td><form:input path="subtitle"/></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
		<tr>
			<td><form:label path="duration">SUBJECT-DURATION:</form:label></td>
			<td><form:input path="duration"/></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
</table>
				<input type="submit" value="ADD SUBJECT"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="RESET"/> &nbsp;&nbsp;&nbsp;&nbsp;
</form:form>

</body>
</html>
