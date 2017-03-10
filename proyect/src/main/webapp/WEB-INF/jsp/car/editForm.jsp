<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<title>Editar Coche</title>
</head>
<body>
	<div>
		<h1>Editar Coche</h1>
	</div>

	<form:form method="POST" modelAttribute="car" action="/car/edit">
			<div>
				<label>Id</label>
				<input type="text" name="id" value="${car.id}"/>
				<form:errors path="name" cssclass="error"></form:errors>
			</div>
			<div>
				<label>Nombre</label>
				<input type="text" name="name" />
				<form:errors path="name" cssclass="error"></form:errors>
			</div>
			<div>
				<label>Precio</label>
				<input type="text" name="price" />
				<form:errors path="price" cssclass="error"></form:errors>
			</div>

		<input type="submit"/>
	</form:form>

</body>
</html>