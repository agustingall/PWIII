<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<c:set var="limite" value="20"/>
<c:forEach var="i" begin="3" end="${limite -5}">
<c:choose>
<c:when test="${i%2 == 0}">
<c:out value="${i} is par"/><br/>
</c:when>
<c:otherwise>
<c:out value="${i} is impar"/><br/>
</c:otherwise>
</c:choose>
</c:forEach>
</body>
</html>