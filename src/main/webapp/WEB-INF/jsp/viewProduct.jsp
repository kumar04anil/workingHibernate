<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="ciyan">
	<h2 align="center">product details Window.</h2>
	<hr>
	<table border ="1" align="center">
	
	<tr>
	<th>ID</th>
	<th>ProductCategory</th>
	<th>Product Name</th>
	<th>Product Code</th>
	<th>Product Price</th>
	<th>Product Description</th>
	</tr>
	
	<tr>
	<c:forEach items="${productResponse}" var="prodlist">
	
	<td>${prodlist.p_id}</td>
	<td>${prodlist.p_category}</td>
	<td>${prodlist.p_name}</td>
	<td>${prodlist.p_code}</td>
	<td>${prodlist.p_price}</td>
	<td>${prodlist.p_description}</td>
	</tr>
	</c:forEach>
	
	</table>
	
</body>
</html>