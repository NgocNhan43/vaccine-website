z
<%@page import="model.Hospital"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:useBean id ="h" class="dal.HospitalDAO" scope ="session"></jsp:useBean>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>Document</title>
            <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" href="assets/css/manager.css">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        </head>

        <body>

        <c:set var="page" value="${param.page}" scope="session"/>
        <c:if test="${page<=0}">
            <c:set var="page" value="1" scope="session"/>
        </c:if>
        <c:if test="${page==null}">
            <c:set var="page" value="1" scope="session"/>
        </c:if>
        <c:if test="${not empty page}">
            <c:set var="page" value="${page}" scope="session"/>
        </c:if>
        <fmt:formatNumber type="number" var="maxpage" value="${Math.ceil(h.allHospital.size()/2)}">

        </fmt:formatNumber>
        <c:if test="${page>=maxpage}">
            <c:set var="page" value="${maxpage}" scope="session"/>
        </c:if>

        <nav class="navbar navbar-expand-sm fixed-top text-dark .bg-white choice-taskbar">
            <div class="container">

                <a class="navbar-brand" href="#"></a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"> <img src="icon/bars-solid.svg" alt=""> </span>
                </button>

                <div class="collapse navbar-collapse " id="collapsibleNavbar">
                    <ul class="navbar-nav mr-auto choice-taskbar-one">
                        <li class="nav-item choice-taskbar">
                            <a href="./home.html">Home</a>
                        </li>

                        <li class="nav-item choice-taskbar">
                            <a href="./aboutus.html">
                                About
                            </a>
                        </li>


                        <li class="nav-item choice-taskbar">
                            <a href="#">
                                Menu
                            </a>
                        </li>


                        <li class="nav-item choice-taskbar">
                            <a href="./contactus.html">
                                Contact
                            </a>
                        </li>


                    </ul>

                    <!-- <ul class="navbar-nav ml-auto"> -->
                    <form class="form-inline" action="/somepage">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">Search</button>
                    </form>

                    <div class="dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            &emsp;&emsp;<i class="fa fa-user-circle-o" aria-hidden="true"></i> Hello Dev
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Option 1</a>
                            <a class="dropdown-item" href="#">Option 2</a>
                            <a class="dropdown-item" href="#">Option 3</a>
                        </div>
                    </div>


                </div>
        </nav>
        <div class="collapse navbar-collapse" id="Navbar">
            <ul class="navbar-nav mr-auto"> ... </ul>
        </div>

        <div class="main-content">
            <div class="container">
                <div class="row  choice-list">
                    <div class="col-sm-6 ml-auto">
                        <h5>Admin manager</h5>
                    </div>
                    <div class="col-sm-6 mr-auto">
                        <a href="#">Xem tất cả</a>
                    </div>
                </div>
            </div>

            <div class="container">
                <nav class="navbar navbar-expand-sm text-dark bg-white choice-taskbar d-inline-block">
                    <div class="container">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"><img src="icon/bars-solid.svg" alt=""></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <ul class="navbar-nav flex-column choice-taskbar-one">
                                <li class="nav-item choice-taskbar">
                                    <a class="nav-link" data-toggle="tab" href="#product-manager">Product Manager</a>
                                </li>
                                <li style="background-color: #339FD5" class="nav-item choice-taskbar">
                                    <a style="color: white" class="nav-link" data-toggle="tab" href="hospital_manager.jsp">Hospital Manager</a>
                                </li>
                                <li class="nav-item choice-taskbar">
                                    <a class="nav-link"  href="user_manager.jsp">User Manager</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>


                <%
                    if (session.getAttribute("updateinforsucess") != null) {
                %>
                <script>
                    alert("<%= session.getAttribute("updateinforsucess")%>");
                </script>
                <%
                        // Xóa session để không hiển thị lại khi người dùng tải lại trang
                        session.removeAttribute("updateinforsucess");
                    }
                %>     
                
                
                
                 <%
                    if (session.getAttribute("delete") != null) {
                %>
                <script>
                    alert("<%= session.getAttribute("delete")%>");
                </script>
                <%
                        // Xóa session để không hiển thị lại khi người dùng tải lại trang
                        session.removeAttribute("delete");
                    }
                %>     
                
                
                <%
                    if (session.getAttribute("resetPass") != null) {
                %>
                <script>
                    alert("<%= session.getAttribute("resetPass")%>");
                </script>
                <%
                        // Xóa session để không hiển thị lại khi người dùng tải lại trang
                        session.removeAttribute("resetPass");
                    }
                %>  

                <div id="product-manager" class="container " >
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Serial</th>
                                <th>ID</th>
                                <th>Hospital Name</th>
                                <th>Address</th>
                                <th>Email</th>
                                <th>Hotline</th>
                                <th> Action</th>  
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${h.allHospital}" var = "i" begin="${(page-1)*10}" end="${page*10-1}" varStatus="loop">     
                                <tr>
                                    <td>${loop.index + 1}</td>
                                    <td>${i.idBV}</td>
                                    <td>${i.name}</td>
                                    <td>${i.address}</td>
                                    <td>${i.email}</td>
                                    <td> ${i.hotline}</td>

                                    <td>
                                        <button class="btn btn-primary edit-button" data-toggle="modal" data-target="#editModal${i.idBV}">
                                            Edit
                                        </button>
                                        <button class="btn btn-primary edit-button" type="button" class="btn btn-primary"
                                                data-bs-toggle="modal" data-bs-target="#exampleModal${i.idBV}">Delete</button>
                                                <button class="btn btn-primary edit-button" type="button" class="btn btn-primary"
                                                data-bs-toggle="modal" data-bs-target="#resetPass${i.idBV}">Reset password</button>
                                    </td>
                                </tr>
                                
                                
                                <!--reset Pass-->
                                
                                
                                <div class="modal fade" id="resetPass${i.idBV}" tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i>
                                                Reset password</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure to reset password this User?
                                        </div>
                                        <div class="modal-footer">
                                            <form action="ResetPasswordHospitalByAdminController" method="Post">
                                                <input type="search" value="${i.idBV}" name="idUser" hidden>
                                                <input type="search" value="${i.email}" name="email" hidden>
                                                <!-- <input type="search" value="w" name="pid" hidden> -->
                                                <button type="submit" class="btn btn-primary">Yes</button>
                                                <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">No</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                
                                
                                <!--delete-->
                                


                            <div class="modal fade" id="exampleModal${i.idBV}" tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i>
                                                Delete</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure to delete this Hospital?
                                        </div>
                                        <div class="modal-footer">
                                            <form action="DeleteHospitalByAdminController" method="Post">
                                                <input type="search" value="${i.idBV}" name="idBV" hidden>
                                                <!-- <input type="search" value="w" name="pid" hidden> -->
                                                <button type="submit" class="btn btn-primary">Yes</button>
                                                <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">No</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="modal fade" id="editModal${i.idBV}" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="editModalLabel">Edit Hospital</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <!--form chỉnh sửa-->
                                            <form class="form" action="UpdateHospitalByAdminController" method="post"
                                                  id="infor">
                                                <input type="search" value="${i.idBV}" name="idBV" hidden>
                                                <div class="container row">

                                                    <div class="col-sm-6">
                                                        <label for="first_name">
                                                            <h6>Hospital name</h6>
                                                        </label>

                                                        <input type="text" class="form-control"
                                                               name="name" id="first_name"
                                                               value="${i.name}" />
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label for="email">
                                                            <h6>Email</h6>
                                                        </label>
                                                        <input type="email" class="form-control"
                                                               name="email" id="email"
                                                               value="${i.email}"/>
                                                    </div>

                                                    <div class="col-sm-6">
                                                        <label for="hotline">
                                                            <h6>Hotline</h6>
                                                        </label>
                                                        <input type="text" class="form-control"
                                                               name="hotline" id="mobile"
                                                               value="${i.hotline}" />
                                                    </div>


                                                    <div class="col-sm-6">
                                                        <label for="address">
                                                            <h6>Address</h6>
                                                        </label>
                                                        <input type="text" class="form-control"
                                                               id="location" name="address"
                                                               value=""/>

                                                    </div>                                                  
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary save-button">Save changes</button>
                                                </div>
                                            </form>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        </tbody>
                    </table>                 
                </div>
            </div>

            <div style="text-align: center" class="mt-5">
                <a href="hospital_manager.jsp?page=1"><<</a>
                <a href="hospital_manager.jsp?page=${page-1}"><</a>
                <c:out value="${page}"/>
                <a href="hospital_manager.jsp?page=${page+1}">></a>
                <a href="hospital_manager.jsp?page=${maxpage}">>></a>
            </div>
        </div>

        <!-- Modal chỉnh sửa -->






        <!--footer-->

        <footer>
            <div class="row">
                <div class="col-4 col-sm-2">
                    <p>Links</p>
                    <ul class="list-unstyled">
                        <li><a href="./home.html">Home</a></li>
                        <li><a href="">About</a></li>
                        <li><a href="">Menu</a></li>
                        <li><a href="">Contact</a></li>
                    </ul>
                </div>

                <div class="col-7 col-sm-5">
                    <p>Our Address</p>
                    <span>121, Clear Water Bay Road <br>
                        Clear Water Bay, Kowloon <br>
                        HONG KONG </span>


                    <div class="row">
                        <div class="col-xl-12">
                            <img width="10" height="10" src="icon/phone-solid.svg" alt="">
                            <span class="">+852 1234 5678</span>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-12">
                            <img width="10" height="10" src="icon/tty-solid.svg" alt="">
                            <span class="">+852 8765 4321 </span>
                        </div>
                    </div>


                    <div class="row">
                        <div class="phone col-xl-12">
                            <img width="10" height="10" src="icon/envelope-solid.svg" alt="">
                            <a href="mailto:confusion@food.net">confusion@food.net</a>
                        </div>
                    </div>


                </div>

                <div class="col-12 col-sm-4" style="margin: auto;">
                    <div class="row social-media">
                        <img width="40" height="40" src="icon/450_1000.jpg" alt="">
                        <img width="40" height="40" src="icon/640px-Facebook-icon-1.png" alt="">
                        <img width="40" height="40" src="icon/download.png" alt="">
                        <img width="40" height="40" src="icon/twitter-icon-square-logo-108D17D373-seeklogo.com.png"
                             alt="">
                        <img width="40" height="40" src="icon/pngtree-youtube-square-png-png-image_1589629.jpg" alt="">
                        <img width="40" height="40" src="icon/images.jpg" alt="">
                    </div>
                </div>

                <div class="col-auto" style="margin: auto;">© Copyright 2018 Ristorante Con Fusion</div>
            </div>
        </footer>

        <script src="assets/js/managerjs.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>

</html> 