<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/mystyle.css"/>
</head>
<body>
  <jsp:include page="header.jsp" />
   <jsp:include page="menu.jsp" />
 
 
 
   <div class="page-title">Login</div>
 
  <!-- Bootstrap login code -->
         <div class="wrapper">
    		<form class="form-signin">       
      			<h2 class="form-signin-heading">Please login</h2>
      			<input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
      			<input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      			<label class="checkbox">
        		<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      			</label>
      		<input type="submit" class="btn btn-lg btn-primary btn-block" value="Submit">  
    </form>
  </div>
 <!-- end of Bootstrap login code-->
 
   <jsp:include page="footer.jsp" />
</body>
</html>