<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
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

        .button.add-button {
            background-color: #28a745;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<a href="products?action=new" class="button add-button">Add new book</a>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Author</th>
        <th>Price</th>
        <th>Category</th>
        <th>Description</th>
        <th>Amount</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.author}</td>
            <td>${product.price}</td>
            <td>${product.category}</td>
            <td>${product.desc}</td>
            <td>${product.amount}</td>
            <td>
                <a href="products?action=edit&id=${product.id}" class="button">Edit</a>
                <a href="products?action=delete&id=${product.id}" class="button" onclick="return confirm('Are you sure you want to delete this book?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
