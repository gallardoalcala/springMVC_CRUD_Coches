<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Lista de coches</title>
</head>
<body>
	<div>
		<h1>Lista de coche</h1>
	</div>
	<c:choose>
	    <c:when test="${empty carList}">
	       <h3>No hay coches guardados</h3>
	       <center><button onclick="location.href='/car/add'">Añadir</button></center>
	    </c:when>
	    <c:otherwise>
	    	<h2>Listado de coches</h2><br>
	    	<table>
	    		<tr>
	    			<th>ID</th>
	    			<th>Nombre</th>
	    			<th>Precio</th>
	    			<th>Menu</th>
	    		</tr>
		        <c:forEach items="${carList}" var="car">
					<tr>
						<td>${car.id}</td>
						<td>${car.name}</td>
						<td>${car.price}</td>
						<td>
							<button onclick="location.href='/car/show/${car.id}'">Mostrar</button>
							<button onclick="location.href='/car/edit/${car.id}'">Editar</button>
							<button onclick="location.href='/car/eliminar/${car.id}'">Eliminar</button>
						</td>
					</tr>
				</c:forEach>
			</table><br>
			<button onclick="location.href='/car/add'">Añadir</button>
	    </c:otherwise>
	</c:choose>
	
</body>
</html>