<%-- 
    Document   : recibe
    Created on : 19/09/2021, 03:08:00
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
       <h1>Recibe datos</h1>
        Sus preferencias son:<br/>
        <%
        String[] favoritos = request.getParameterValues("favoritos");
        for(String favorito: favoritos)
        out.println(favorito + "<br/>");
        %>
<br/><br/>
<hr/>

    </body>
</html>
