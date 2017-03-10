<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Añadir</title>
</head>
<body>
	<div>
		<h1>Añadir coche</h1>
	</div>
	<center>
	<form:form method="POST" modelAttribute="car">
		<p>
			Nombre:
			<input type="text" name="name" />
			<form:errors path="name" cssclass="error"></form:errors>
		</p>
		<p>
			Precio:
			<input type="text" name="price" />
			<form:errors path="price" cssclass="error"></form:errors>
		</p>

		<input type="submit">
	</form:form>
	</center>
</body>
</html>