<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SGP - App</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.1.1-dist/css/bootstrap.css">
</head>
<body>
  <h1>Les collaborateurs et compagnies</h1>
	<ul>
		<%List<String> listeNoms = (List<String>) request.getAttribute("listeNoms");
			for (String nom : listeNoms) {%>
		<li><%=nom%></li>
		<%}%>
	</ul>
	
</body>
</html>