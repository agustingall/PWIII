<%-- 
    Document   : ejemplo3
    Created on : 15/09/2021, 16:49:32
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
            <jsp:useBean id="libro" scope="session" class="controller.Libros" />
            <jsp:setProperty name="libro" property="*" />
            <%
            libro.processRequest(request);
            %>
        
    </body>
</html>
