<%-- 
    Document   : History
    Created on : Jun 7, 2023, 10:40:25 PM
    Author     : HUNTER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>History Vaccine</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>
    <div class="container">
        <h2>History Vaccine</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Gender</th>
                    <th>Hospital</th>
                    <th>Date</th>
                    <th>Vaccine</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${History}" var="o">
                <tr>
                    <td>${o.userName}</td>
                    <td>${o.gender}</td>
                    <td>${o.hospital}</td>
                    <td>${o.date}</td>
                    <td>${o.vaccine}</td>
                    <td>${o.price}</td>
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