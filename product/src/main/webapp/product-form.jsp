<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
    }

    form {
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 5px;
    }

    input[type="text"] {
      width: 200px;
      padding: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .button {
      display: inline-block;
      padding: 8px 16px;
      font-size: 14px;
      text-align: center;
      text-decoration: none;
      background-color: #007bff;
      color: #fff;
      border-radius: 4px;
      cursor: pointer;
    }

    .button.cancel {
      background-color: rgba(0, 225, 255, 0);

    }
  </style>
</head>
<body>
<c:choose>
  <c:when test="${empty product.id}">
    <form action="products?action=create" method="post">
      <label for="name">Name:</label>
      <input type="text" name="name" id="name"><br><br>
      <label for="author">Author:</label>
      <input type="text" name="author" id="author"><br><br>
      <label for="price">Price:</label>
      <input type="text" name="price" id="price"><br><br>
      <label for="category">Category:</label>
      <input type="text" name="category" id="category"><br><br>
      <label for="desc">Description:</label>
      <input type="text" name="desc" id="desc"><br><br>
      <label for="amount">Amount:</label>
      <input type="text" name="amount" id="amount"><br><br>
      <input type="submit" class="button" value="Create">
      <a href="products" class="button ">Cancel</a>
    </form>
  </c:when>
  <c:otherwise>
    <form action="products?action=update" method="post">
      <input type="hidden" name="id" value="${product.id}">
      <label for="name">Name:</label>
      <input type="text" name="name" id="name" value="${product.name}"><br><br>
      <label for="author">Author:</label>
      <input type="text" name="author" id="author" value="${product.author}"><br><br>
      <label for="price">Price:</label>
      <input type="text" name="price" id="price" value="${product.price}"><br><br>
      <label for="category">Category:</label>
      <input type="text" name="category" id="category" value="${product.category}"><br><br>
      <label for="desc">Description:</label>
      <input type="text" name="desc" id="desc" value="${product.desc}"><br><br>
      <label for="amount">Amount:</label>
      <input type="text" name="amount" id="amount" value="${product.amount}"><br><br>
      <input type="submit" class="button" value="update">
      <a href="products" class="button">Cancel</a>
    </form>

  </c:otherwise>
</c:choose>
</body>
</html>