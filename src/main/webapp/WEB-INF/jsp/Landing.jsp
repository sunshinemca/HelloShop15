<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing Page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/mystyle.css"/>


<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="menu.jsp" />
<div class="page-title">Shopping Cart Demo</div>
<jsp:include page="imgcarousel.jsp"/>
<jsp:include page="trendProducts.jsp"/>
<jsp:include page="footer.jsp" />
<a href="${pageContext.request.contextPath}/cart">Cart</a>
   
</body>
</html>