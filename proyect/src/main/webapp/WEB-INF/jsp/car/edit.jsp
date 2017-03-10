<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Editar</title>

</head>
<body>
	<div>
		<h1>El coche ${car.name} ha sido editado</h1>
	</div>
	<center>
		<button onclick="location.href='/car/list'">Volver</button>
	</center>
</body>
</html>