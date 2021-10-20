<%-- 
    Document   : ListarMateria
    Created on : 04/10/2021, 05:34:27
    Author     : Agustin
--%>
<%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="entidades.Carrera"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Listar Materia</title>
	<link rel="icon" type="image/svg+xml"  href="https://cdn.pixabay.com/photo/2019/12/14/07/21/mountain-4694346_960_720.png" sizes="any">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.css">

</head>
<body>
	<div class="container w-75 .flex-wrap">
		<nav class="navbar navbar-expand-lg navbar-light bg-light pl-0 pr-0">
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="/">Inicio<span class="sr-only">(current)</span></a>
		      </li>
		      
		      
		    </ul>
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
		      <button class="btn btn-info my-2 my-sm-0" type="submit">Buscar</button>
		    </form>
	  		</div>
		</nav>

		<header class="row mt-1  ml-0">
			<div class="row col-12 col-md-2 icono justify-content-center">
				<img src="https://cdn.pixabay.com/photo/2019/12/14/07/21/mountain-4694346_960_720.png" class="img-fluid" alt="Responsive image col-12 ">
			</div>
			<div class="container col-10 ">

			<p class="h1 titulo text-center border-bottom  border-info mt-4 col-12">
				PWIII
			</p>

			<p class="h4 text-center  col-12">
				Persistencia
			</p>
			
			</div>
		</header>
		
		<h2 class="h2 text-center text-info mt-3">
		Listar Materia
	</h2>

	
		<table class="table">
			<thead>
				<tr>
				<th>Id</th>				
				<th>Nombre</th>
				<th>Facultad</th>
				<th></th>
				<th></th>		
				</tr>
			</thead>
			<tbody>
				<c:forEach var="articulo" items="${lista}">
				<tr>
				<td><c:out value="${articulo.getIdcarrera()}"/></td>
				<td><c:out value="${articulo.getNombre()}"/></td>
				<td><c:out value="${articulo.getFacultadIdfacultad()}"/></td>
				<td></td>
				<td><a href="http://127.0.0.1:5000/update/libro?isbn={{l.isbn}}" class="btn btn-outline-info">Editar</a></td>
				<td><a href="http://127.0.0.1:5000/delete/libro?isbn={{l.isbn}}" class="btn btn-outline-danger">Eliminar</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="http://127.0.0.1:5000/index" class="btn btn-info mb-2">
			Volver
		</a>
		
	</div>

	<script src="../static/js/bootstrap.min.js"></script>
</body>
</html>