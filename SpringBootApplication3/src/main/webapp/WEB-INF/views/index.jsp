<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<f:form action="processForm" method="post" modelAttribute="student">
		FirstName<f:input path="firstName" />
		<f:errors path="firstName"></f:errors>
		<br>
		LastName<f:input path="lastName" />
		<f:errors path="lastNmae"></f:errors>
		<br>
		Country<f:select path="country">
			<f:options items="${student.countryOption}" />
		</f:select>
		<br>
		<br>
		<input type="submit" value="Submit" />
	</f:form>

</body>
</html>