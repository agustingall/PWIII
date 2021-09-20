<%-- 
    Document   : index
    Created on : 19/09/2021, 03:06:23
    Author     : Agustin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <form action="recibe.jsp" method="post">
            <label for="favoritos">Marca de las siguientes opciones, cuales son
            tus preferidas</label><br/>
            <select multiple id="favoritos" name="favoritos" size=9>
             <option value="deportes">Deportes</option>
             <option value="cine">Cine</option>
             <option value="teatro">Teatro</option>
             <option value="fotografía">Fotografía</option>
             <option value="lectura">Lectura</option>
             <option value="viajes">Viajes</option>
             <option value="pintura">Pintura</option>
             <option value="música">Música</option>
             <option value="otros">Otros</option>
            </select>
            <input type="submit" value="Enviar"/>
            </form>

        
    </body>
</html>
