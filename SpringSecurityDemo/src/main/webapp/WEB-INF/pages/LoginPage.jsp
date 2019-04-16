<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty error }"><div>${error} }</div></c:if>
<c:if test="${not empty message }"><div>${message} }</div></c:if>
	<h2>User Information</h2>
	<form:form action="loginPage">
		<table>
			<tr>
				<td>UserName:</td>
				<td><input type="text" name="name"></td>

			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="userpassword"></td>
			</tr><tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
		<input type = "hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
	</form:form>

</body>
</html>