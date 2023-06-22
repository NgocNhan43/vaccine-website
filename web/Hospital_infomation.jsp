<%-- 
    Document   : hospital
    Created on : Jun 8, 2023, 12:05:30 PM
    Author     : HUNTER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>Hospital Table</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>
    <div class="container">
        <h2>Hospital Table</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>name</th>
                    <th>address</th>
                    <th>email</th>
                    <th>hotline</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${ListHospital}" var="o">
                <tr>
                    <td>${o.name}</td>
                    <td>${o.address}</td>
                     <td>${o.email}</td>
                    <td>${o.hotline}</td>
                </tr>
            </c:forEach>
           
           
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>