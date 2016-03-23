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
<form action="test1.jsp">
<select name="combo">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
</select>
<input type="submit">
</form>

<c:set var="s" value="${param.combo}"/>
Today is: 
<c:choose>
	<c:when test="${s==1 }">Sunday</c:when>
	<c:when test="${s==2 }">Monday</c:when>
	<c:when test="${s==3 }">Tuesday</c:when>
	<c:when test="${s==4 }">Wednesday</c:when>
	<c:when test="${s==5 }">Thursday</c:when>
	<c:when test="${s==6 }">Friday</c:when>
	<c:when test="${s==7 }">Saturday</c:when>
	<c:otherwise>Select between 1 and 7</c:otherwise>

</c:choose>


<c:forEach begin="0" end="4" step="1">
<h1>Learning JSTL is easy</h1><br>
</c:forEach>


<%

String[] s={"A","B","C","D"};
pageContext.setAttribute("s", s);

%>

<c:forEach items="${s}" var="obj">

<h5>The current object is: ${obj}</h5>

</c:forEach>



</body>
</html>