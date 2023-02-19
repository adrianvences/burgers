


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
  
  <div class="container mt-3 bg-dark p-3" style="width: 30% ;">
    <div class="card bg-danger">
      <div class="card-body">
        <h1 class="text-center">Edit a Burger</h1>
        <form:form action="/burgers" method="post" modelAttribute="burger">
  
          <div class="form-control bg-warning mb-3">
            <form:label path="name">Name:</form:label>
            <form:errors path="name"></form:errors>
            <form:input path="name"></form:input>
          </div>
  
          <div class="form-control bg-warning mb-3">
            <form:label path="restaurantName">restaurantName:</form:label>
            <form:errors path="restaurantName"></form:errors>
            <form:input  path="restaurantName"></form:input>
          </div>
  
          <div class="form-control bg-warning mb-3">
            <form:label path="rating">rating:</form:label>
            <form:errors path="rating"></form:errors>
            <form:input path="rating"></form:input>
          </div>
  
          <div class="form-control bg-warning">
            <form:label path="notes">notes:</form:label>
            <form:errors path="notes"></form:errors>
            <form:input path="notes"></form:input>
          </div>
  
          <input class="btn btn-dark text-light mt-3" type="submit" value="edit burger">
          
  
        </form:form>
        <a class="btn btn btn-secondary mt-3 border-solid" href="/">Go back</a>
      </div>
    </div>
  </div>

</body>
</html>
