<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>BOOK</title>
</head>
<body>
<h1>
	PLEASE ENTER BOOK DETAILS
</h1>

<form:form method="POST" action="addbook" modelAttribute="booksadd" >
	<table>
		<tr>
			<td><form:label path="bookid">BOOK-ID:</form:label></td>
			<td><form:input path="bookid"/></td>
		
		</tr>
		
		<tr><td><br><hr></td><td><br><hr></td></tr>
	 <tr>
			<td><form:label path="title">BOOK-TITLE:</form:label></td>
			<td><form:input path="title"/></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
		<tr>
			<td><form:label path="price">BOOK-PRICE:</form:label></td>
			<td><form:input path="price"/></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
		<tr>
			<td><form:label path="volume">BOOK-VOLUME:</form:label></td>
			<td><form:input path="volume"/></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
		<tr>
			<td><form:label path="year" >BOOK-PUBLISHED YEAR:</form:label></td>
			<td><form:input path="year" /></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
		<tr>
			<td><form:label path="month" >BOOK-PUBLISHED MONTH:</form:label></td>
			<td><form:input path="month" /></td>
		</tr>
				<tr><td><br><hr></td><td><br><hr></td></tr>
		
		<tr>
			<td><form:label path="day" >BOOK-PUBLISHED DATE:</form:label></td>
			<td><form:input path="day" /></td>
		</tr>
		
</table>
<br>
				<input type="submit" value="ADD BOOK" />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="RESET" /> &nbsp;&nbsp;&nbsp;&nbsp;				
</form:form>
</body>
</html>
