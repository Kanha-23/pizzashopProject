<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.min.css">

</head>
<body>

<div class="container mt-3">
	<div class="row">
		<div class="col-md-12">
		
		<h1>Product details</h1>
		</div>
		<table class="table">
  <thead>
    <tr>
      <th scope="col">S.No.</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${users }" var="p">
    <tr>
      <th scope="row">${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td>${p.price }</td>
      <td>
      	<a href="delete/${p.id}">delete</a> 
      	<a href="update/${p.id}">update</a> 
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>
	<div class="container">
		<a href="add-users" class="btn btn-outline-success">Add Product</a>
	</div>	
	
	</div>
</div>

</body>
</html>
