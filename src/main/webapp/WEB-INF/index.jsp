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
<div class="row">
		<div class="col-sm-6">
		<div class="container">
		    <div class="row">
		        <div class="col-md-12">
		            <div class="well well-sm">
		                <form class="form-horizontal" method="post"  action="/personas" >
		                    <fieldset>
		                        <legend class="text-center header">Agregar persona</legend>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="rut" name="rut" type="text" placeholder="Rut" class="form-control">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="form-control">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="apellido" name="apellido" type="text" placeholder="apellido" class="form-control">
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
		                            <div class="col-md-8">
		                                <input id="email" name="email" type="text" placeholder="Email" class="form-control">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <div class="col-md-12 text-center">
		                                <button type="submit" class="btn btn-primary btn-lg">Guardar</button>
		                            </div>
		                        </div>
		                    </fieldset>
		                </form>
		            </div>
		        </div>
		    </div>
		</div>
	</div>	
	<div class="col-sm-6">
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Rut </th>
					<th>Nombre </th>
					<th>Apellido</th>
					<th>Email</th>
					<th>Accion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="persona"  items="${personas}">
				<tr>
					<td><c:out value="${persona.rut}" /> </td>
					<td><c:out value="${persona.nombre}" /> </td>
					<td><c:out value="${persona.apellido}" /> </td>
					<td><c:out value="${persona.email}" /> </td>
					<td><a href="/personas/editar/${persona.id}" class="btn btn-info" role="button" data-bs-toggle="button">Editar</a><a href="/personas/eliminar/${persona.id}" style="margin-left: 8px;" class="btn btn-danger" role="button" data-bs-toggle="button" >Eliminar</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>	
</div>	
</body>
</html>