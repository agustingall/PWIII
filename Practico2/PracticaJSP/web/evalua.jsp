<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<jsp:useBean id="libro" scope="session" class="sesion.Libros" />

<jsp:setProperty name="libro" property="*" />
<%@taglib prefix="miEtiqueta" uri="WEB-INF/tlds/descriptor.tld" %>
<%@include file="inicio.html" %>
<%
        libro.processRequest(request);
%>

<div style="font-size: 25px; color: red;">
<hr/>    
<br> Items agregados al carrito:
<ol>

<%
	String[] items = libro.getItems();
	for (int i=0; i<items.length; i++) {
%>
<li> <% out.print(items[i]); %> </li>
<%
	}
%>
<miEtiqueta:etiqueta/>
</ol>
<hr/>
</div>
</body>
</html>