<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

Request headers
<table border="2">
<c:forEach items="${header}" var="hdr">
<tr>
<td>${hdr.key}</td>
<td>${hdr.value}</td>
</tr>
</c:forEach>
</table>
Cookies
<table border="2">
<c:forEach items="${cookie}" var="c">
<tr>
<td>${c.key}</td>
<td>${c.value}</td>
</tr>

</c:forEach>
</table>

<c:forEach items="john,bob,Ricky" varStatus="status">
Is it first Iteration? : ${status.first}<br>
The current object is : ${status.current}<br>
</c:forEach>
<br><br>
<c:forTokens items="one,two,three,four" delims="," var="d" begin="0" end="3" step="2">
The current token is: ${d}<br>
</c:forTokens>





</body>
</html>