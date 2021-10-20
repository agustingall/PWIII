<%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : ListarMateria
    Created on : 04/10/2021, 05:34:27
    Author     : Agustin
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="entidades.Materia"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<title>Creacion de Usuario</title>

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

	<div class="container mt-3">
		<h2 class="h2 text-center text-primary ">Crear Usuario</h2>
		<form method="POST" class="mt-3 row d-flex flex-column justify-content-center align-items-center" action="AgregarUsuario">
                    
                    <div class="row mb-3 col-8">
		    <label for="id" class="col-sm-2 col-form-label">Id</label>
		    <div class="col-sm-10">
		      <input type="number"  class="form-control" id="id" name="id" >
		    </div>
                    </div>
                    
                    <div class="row mb-3 col-8">
		    <label for="nombre" class="col-sm-2 col-form-label">Nombre de Usuario</label>
		    <div class="col-sm-10">
		      <input type="text"  class="form-control" id="nombre" name="nombre" >
		    </div>
		 	
		  </div>

		  <div class="row mb-3 col-8">
		    <label for="password" class="col-sm-2 col-form-label">Password</label>
		    <div class="col-sm-10">
		      <input type="text"  class="form-control" id="password" name="password" >
		    </div>
		 	
		  </div>
				  
		  <button type="submit" class="btn btn-primary col-4">Crear Usuario</button>
	</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>
</html>