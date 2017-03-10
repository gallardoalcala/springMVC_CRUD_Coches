<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Datos Coche</title>
</head>
<body>
	<div>
		<h1>Datos</h1>
	</div>
	<h2>${car.name} <small>${car.price}</small></h2>
	<br>
	<center>
		<button onclick="location.href='/car/list'">Volver</button>
	</center>
</body>
</html>