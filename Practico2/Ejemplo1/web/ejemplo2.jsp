<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
Fecha: <br/>
<c:set var="hoy" value="<%= new java.util.Date()%>" />
<fmt:formatDate type="date" value="${hoy}" /><br/>
<fmt:formatDate type="time" value="${hoy}" /><br/>
<fmt:formatDate type="both" value="${hoy}" />
</body>
</html>