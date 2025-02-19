<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.min.css">
</head>
<body>
<form action="${pageContext.request.contextPath }/handle-user" method="post" class="row  m-5">
  <div class="col-12">
  
  <input type="text" name="id" value="${users.id}">
  
    <label for="name" class="form-label">Product Name</label>
    <input type="text" class="form-control" id="name" name="name"
    value="${users.name }">
  </div>
  <div class="col-12">
    <label for="description" class="form-label">Product Description</label>
    <textarea class="form-control" id="description" name="description"
     >${users.description }</textarea>
  </div>
  <div class="col-12">
    <label for="price" class="form-label">Product Price</label>
    <input type="text" class="form-control" id="price" placeholder="1234 Main St" name="price"
     value="${users.price }">
  </div>
  
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
</form>
</body>
</html>