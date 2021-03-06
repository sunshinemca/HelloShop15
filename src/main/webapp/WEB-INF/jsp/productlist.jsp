<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List Page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/mystyle.css">
</head>
<body>
  <jsp:include page="header.jsp" />
   <jsp:include page="menu.jsp" />
  
   <fmt:setLocale value="en_US" scope="session"/>
 
   <div class="page-title">Product List</div>
   
   

		
			<c:forEach var="listValue" items="${productlist}">
			<div class="product-preview-container" id="section1">
				<ul>
					<li>Product ID:${listValue.id}</li>
					<li>Product Name:${listValue.name}</li>
					<li>Product Price:${listValue.price}</li>
					<li>Product Brand:${listValue.brand}</li>
					
					<li>
                      <a href="buyProduct?code=${listValue.id}">
                       Buy Now</a>
               		</li>
				</ul>
			</div>
			</c:forEach>
		

	
 
 <!--<c:forEach items="${paginationProducts.list}" var="prodInfo">
  
      <div class="product-preview-container" id="section1">
           <ul>
               <li><img class="product-image" src="resources/images/p1.jpg" /></li>
               <li>Code: S001</li>
               <li>Name: Samsung</li>
               <li>Price: $100.00</li>
               <li>
               <a href="${pageContext.request.contextPath}/buyProduct?code=${prodInfo.code}">
                       Buy Now</a>
               </li>-->
               <!-- For Manager edit Product -->
               <!--<security:authorize  access="hasRole('ROLE_MANAGER')">
                 <li><a style="color:red;"
                     href="${pageContext.request.contextPath}/product?code=${prodInfo.code}">
                       Edit Product</a></li>
               </security:authorize>
           </ul>
       </div>
       
</c:forEach>-->
   <br/>
  
 
   <c:if test="${paginationProducts.totalPages > 1}">
       <div class="page-navigator">
          <c:forEach items="${paginationProducts.navigationPages}" var = "page">
              <c:if test="${page != -1 }">
                <a href="productList?page=${page}" class="nav-item">${page}</a>
              </c:if>
              <c:if test="${page == -1 }">
                <span class="nav-item"> ... </span>
              </c:if>
          </c:forEach>
          
       </div>
   </c:if>
 &nbsp;&nbsp;

 
   <jsp:include page="footer.jsp" />
</body>
</html>
