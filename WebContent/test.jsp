<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="customer" class="pack1.CustomerBean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:out value="John"/>

<c:out value="${param.uname}" default="Guest"/>

<c:set var="x" value="10" scope="session"/>
<c:set var="y" value="20" scope="session"/>

<c:set var="result" value="${x+y}" scope="application"/>

<h1> The result is <c:out value="${result}"/></h1>


<c:set target="${customer}" property="name" value="Hello"/>

<c:remove var="x" scope="session"/>


<c:catch var="e">

<%
int age = Integer.parseInt(request.getParameter("uname"));

%>
<br>
Age:${param.uage}

</c:catch>

<c:if test="${e!=null}" var="b" scope="session">

Exception raised: ${e}<br>

</c:if>

</body>
</html>