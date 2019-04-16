<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Success...
<ul>
<li>Java 8 Tutorial</li>
<li> Spring Tutorial</li>
<li> Gradle Tutorial</li>
<li>Bigdata Tutorial</li>
</ul>
<c:url value="/logout" var="logoutUrl"/>
<form id="logout" action="${logoutUrl }" method="post">
<input type="hidden" name="${csrf:prameterName }" value="${_csrf.token }"/>
</form>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
<a href="javascript:document.getElementById('logout').submit()">Logout</a>
</c:if>
</body>
</html>