<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
    <h2>Fill the Product Details</h2>

    <form  action="handle-product"  method="post">
        <div class="form-group">
            <label for="productName">Product Name</label>
            <input type="text" class="form-control" id="productName" name="name" placeholder="Enter the product name">
        </div>

        <div class="form-group">
            <label for="productDescription">Product Description</label>
            <textarea class="form-control" id="productDescription" rows="3"
                   name="description"   placeholder="Enter the description"></textarea>
        </div>

        <div class="form-group">
            <label for="productPrice">Product Price</label>
            <input type="number" class="form-control" id="productPrice" name="price" placeholder="Enter the price">
        </div>

        <div class="container text-center">
            <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">BACK</a>
            
            <button type="submit" class="btn btn-primary">ADD</button>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"
        integrity="sha384-X48pgq1aNFbOiL1wgrvBgLjHXuE7PhvfS+/JPIJbVU7jzIe30F2EPmPcHV4RnPb"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyklA5Mtx4VBY" crossorigin="anonymous"></script>

</body>
</html>