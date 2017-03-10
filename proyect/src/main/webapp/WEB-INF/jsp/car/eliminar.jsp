<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Eliminar</title>
</head>
<body>
	<div>
		<h2>El coche: ${car.name} ha sido eliminado</h2>
	</div>
	<center><button onclick="location.href='/car/list'">Volver</button></center>
</body>
</html>