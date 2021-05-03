<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</head>
<body>
<ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Inicio</a>
  </li>
</ul>
	<h2>Ingrese información</h2>
	<form:form action="/persona/actualizar/" method="POST" modelAttribute="persona">
		<form:hidden path="id"/>
		<form:label path="rut">Rut: </form:label>
		<form:input path="rut" />
		<form:label path="nombre">Nombre: </form:label>
		<form:input path="nombre" />
		<form:label path="apellido">Apellido: </form:label>
		<form:input path="apellido" />
		<form:label path="email">Email: </form:label>
		<form:input path="email" />
		<br>
		<input type="submit" value="Actualizar">
	</form:form>
</body>
</html>