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

<form:form method="POST" action="addbook" modelAttribute="booksadd" >
	<table>
		<tr>
			<td><form:label path="bookid" >BookID:</form:label></td>
			<td><form:input path="bookid"/></td>
		</tr>
	 <tr>
			<td><form:label path="title" >BookTitle:</form:label></td>
			<td><form:input path="title" /></td>
		</tr>
		<tr>
			<td><form:label path="price" >BookPrice:</form:label></td>
			<td><form:input path="price" /></td>
		</tr>
		<tr>
			<td><form:label path="volume" >BookVolume:</form:label></td>
			<td><form:input path="volume" /></td>
		</tr>
		<tr>
			<td><form:label path="year" >BookYear:</form:label></td>
			<td><form:input path="year" /></td>
		</tr>
		<tr>
			<td><form:label path="month" >BookMonth:</form:label></td>
			<td><form:input path="month" /></td>
		</tr>
		<tr>
			<td><form:label path="day" >BookDay:</form:label></td>
			<td><form:input path="day" /></td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="Add Book" />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="Reset Fields" /> &nbsp;&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
</table>

</form:form>
</body>
</html>
