<!doctype html>
<html lang="en">

    <!-- 02_05_gallery.html  [XR&CO'2014], Tue, 22 Oct 2019 11:55:03 GMT -->

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>02_05_gallery</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
        <link rel="stylesheet" href="plugin/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="plugin/bootstrap/css/bootstrap-theme.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="fonts/poppins/poppins.css">
        <link rel="stylesheet" href="plugin/fonts/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="plugin/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" href="plugin/process-bar/tox-progress.css">
        <link rel="stylesheet" href="plugin/owl-carouse/owl.carousel.min.css">
        <link rel="stylesheet" href="plugin/owl-carouse/owl.theme.default.min.css">
        <link rel="stylesheet" href="plugin/animsition/css/animate.css">
        <link rel="stylesheet" href="plugin/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" href="plugin/mediaelement/mediaelementplayer.css">
        <link rel="stylesheet" href="plugin/datetimepicker/bootstrap-datepicker3.css">
        <link rel="stylesheet" href="plugin/datetimepicker/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="plugin/lightgallery/lightgallery.css">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/hospital.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    </head>

    <body>

        <!--load page-->
        <div class="load-page">
            <div class="sk-wave">
                <div class="sk-rect sk-rect1"></div>
                <div class="sk-rect sk-rect2"></div>
                <div class="sk-rect sk-rect3"></div>
                <div class="sk-rect sk-rect4"></div>
                <div class="sk-rect sk-rect5"></div>
            </div>
        </div>

        <!-- Mobile nav -->
        <nav class="visible-sm visible-xs mobile-menu-container mobile-nav">
            <div class="menu-mobile-nav navbar-toggle">
                <span class="icon-bar"><i class="fa fa-bars" aria-hidden="true"></i></span>
            </div>
            <div id="cssmenu" class="animated">
                <div class="uni-icons-close"><i class="fa fa-times" aria-hidden="true"></i></div>
                <ul class="nav navbar-nav animated">
                    <li><a href="index.html">Home</a></li>
                    <li class="has-sub"><a href='#'>List Vaccine</a>
                        <ul>
                            <li><a href="list_of_vaccine.html">List Vaccine</a></li>
                            <li><a href="detail_vaccine.html">Detail Vaccine</a></li>
                        </ul>
                    </li>
                    <li><a href="03_01_services.html">Booking Schedules</a></li>
                    <li class="has-sub"><a href="#">Departments</a>
                        <ul>
                            <li><a href="04_01_departments.html">Departments</a></li>
                            <li><a href="04_02_single_department.html">Single
                                    Departments</a></li>
                        </ul>
                    </li>
                    <li class="has-sub hover-element"><a href='#'>Shortcode</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </nav>
        <!-- End mobile menu -->

        <div class="uni-gallery">
            <div id="wrapper-container" class="site-wrapper-container">
                <header>
                    <div class="uni-medicare-header sticky-menu">
                        <div class="container">
                            <div class="uni-medicare-header-main">
                                <div class="row">
                                    <div class="col-md-2">
                                        <!--LOGO-->
                                        <div class="wrapper-logo">
                                            <a class="logo-default" href="#"><img src="images/logo.png" alt=""
                                                                                  class="img-responsive"></a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <!--MENU TEXT-->
                                        <div class="uni-main-menu">
                                            <nav class="main-navigation uni-menu-text">
                                                <div class="cssmenu">
                                                    <ul>
                                                        <li><a href="index.html">Home</a></li>
                                                        <li class="has-sub"><a href='#'>List Vaccine</a>
                                                            <ul>
                                                                <li><a href="list_of_vaccine.html">List Vaccine</a></li>
                                                                <li><a href="detail_vaccine.html">Detail Vaccine</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="03_01_services.html">Booking Schedules</a></li>
                                                        <li class="has-sub"><a href="#">Departments</a>
                                                            <ul>
                                                                <li><a href="04_01_departments.html">Departments</a></li>
                                                                <li><a href="04_02_single_department.html">Single
                                                                        Departments</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-sub hover-element"><a href='#'>Shortcode</a></li>
                                                    </ul>
                                                </div>
                                            </nav>
                                        </div>

                                        <!--SEARCH AND APPOINTMENT-->
                                        <div class="uni-search-appointment">
                                            <ul>
                                                <li class="un-btn-search">
                                                    <i class="fa fa-search" aria-hidden="true"></i>
                                                </li>
                                                <li class="uni-btn-appointment dropdown">
                                                    <a class="dropdown-toggle" href="#" role="button" id="user-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-user dropdown-icon"></i> Hello 
                                                    </a>
                                                    <div class="dropdown-menu" aria-labelledby="user-dropdown">
                                                        <a class="dropdown-item" href="#"><i class="fas fa-user"></i> Profile</a>
                                                        <a class="dropdown-item" href="#"><i class="fas fa-cog"></i> Settings</a>
                                                        <a class="dropdown-item" href="logoutController"><i class="fas fa-sign-out-alt"></i> Logout</a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        
                                    </div>
                                </div>

                                <!--FORM SEARCH-->
                                <div class="uni-form-search-header">
                                    <div class="box-search-header collapse" id="box-search-header">
                                        <div class="uni-input-group">
                                            <input type="text" name="key" placeholder="Search" class="form-control">
                                            <button class="uni-btn btn-search">
                                                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>

                <div id="main-content" class="site-main-content">
                    <!-- User Profile -->
                    <div class="user-profile py-4">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="card shadow-sm">
                                        <div class="card-header bg-transparent text-center">
                                            <h3>Tohidul Islam Showrav <span class="badge badge-primary"><i
                                                        class="zmdi zmdi-star-circle"></i> Platinum</span></h3>
                                        </div>
                                        <div class="card-body">
                                            <ul class="nav flex-column side-menu">
                                                <li class="nav-item">
                                                    <a href="#dashboard" class="nav-link" data-toggle="tab">Dashboard</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#shopping-history" class="nav-link" data-toggle="tab">Booking
                                                        History</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#contact-us" class="nav-link" data-toggle="tab">Product
                                                        Manager</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="tab-content">
                                        <div class="tab-pane fade" id="dashboard">
                                            <div class="card shadow-sm mb-3">
                                                <div class="card-header bg-transparent border-0">
                                                    <h3 class="mb-0">Information</h3>
                                                </div>
                                                <div class="card-body">
                                                    <h4>Welcome to your Dashboard!</h4>
                                                    <p>This is where you can view and manage your account details,
                                                        preferences, and settings.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="shopping-history">
                                            <div class="card shadow-sm mb-3">
                                                <div class="card-header bg-transparent border-0">
                                                    <h3 class="mb-0">Booking History</h3>
                                                </div>
                                                <div class="card-body">
                                                    <p>Here you can see a list of your previous purchases and their details.
                                                    </p>
                                                    <table class="table table-bordered">
                                                        <tr class="bg-light">
                                                            <th>#</th>
                                                            <th>Name</th>
                                                            <th>Vaccine Name</th>
                                                            <th>Date</th>
                                                            <th>Status</th>
                                                            <th>Action</th>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>User 1</td>
                                                            <td>Covid 19</td>
                                                            <td>13/06/2023</td>
                                                            <td><span class="badge badge-success">Process</span></td>
                                                            <td>
                                                                <button type="button" id="btnOpenForm" class="btn btn-sm btn-success">View
                                                                    more</button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="contact-us">
                                            <div class="card shadow-sm">
                                                <div class="card-header bg-transparent border-0">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <h3 class="mb-0">Product list</h3>
                                                        <button type="button" class="btn btn-primary">Add</button>
                                                    </div>
                                                </div>
                                                <div class="card-body">
                                                    <table class="table table-bordered">
                                                        <tr class="bg-light">
                                                            <th>#</th>
                                                            <th>ID</th>
                                                            <th>Image</th>
                                                            <th>Vaccine Name</th>
                                                            <th>Detail</th>
                                                            <th>Price</th>
                                                            <th>Action</th>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>123</td>
                                                            <td><img src="" alt=""></td>
                                                            <td>Covid 19</td>
                                                            <td>Can kill Covid 19</td>
                                                            <td>200000 VN?</td>
                                                            <td>
                                                                <button class="btn btn-primary edit-button" data-toggle="modal" data-target="#editModal">
                                                                    Edit
                                                                </button>
                                                                <button type="button"
                                                                        class="btn btn-sm btn-danger">Delete</button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
                                                 aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="editModalLabel">User Booking Schedule</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label for="name">Name:</label>
                                                                <input type="text" class="form-control" id="name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Gender</label>
                                                                <input type="email" class="form-control" id="email">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Vaccine Name</label>
                                                                <input type="email" class="form-control" id="email">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Date</label>
                                                                <input type="email" class="form-control" id="email">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Time Range</label>
                                                                <input type="email" class="form-control" id="email">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Price</label>
                                                                <input type="email" class="form-control" id="email">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-primary save-button">Save changes</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /User Profile -->
                </div>

                <!-- Booking Schedules popup -->

                <div class="form-popup-bg">
                    <div class="form-container">
                        <button id="btnCloseForm" class="close-button">X</button>
                        <h1>Contact Us</h1>
                        <p>For more information. Please complete this form.</p>
                        <form action="">
                            <div class="form-group">
                                <label >Name</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label >Company Name</label>
                                <input class="form-control" type="text" />
                            </div>
                            <div class="form-group">
                                <label>E-Mail Address</label>
                                <input class="form-control" type="text" />
                            </div>
                            <div class="form-group">
                                <label >Phone Number</label>
                                <input class="form-control" type="text" />
                            </div>
                        </form>
                    </div>
                </div>

                <footer class="site-footer footer-default">
                    <div class="footer-main-content">
                        <div class="container">
                            <div class="row">
                                <div class="footer-main-content-elements">
                                    <div class="footer-main-content-element col-md-3 col-sm-6">
                                        <aside class="widget">
                                            <div class="widget-title uni-uppercase"><a href="#"><img
                                                        src="images/logowhite.png" alt="" class="img-responsive"></a></div>
                                            <div class="widget-content">
                                                <p>
                                                    Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fame ac
                                                    turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.
                                                </p>
                                                <div class="uni-info-contact">
                                                    <ul>
                                                        <li> <i class="fa fa-map-marker" aria-hidden="true"></i> 45 Queen's
                                                            Park Rd, Brighton, UK</li>
                                                        <li><i class="fa fa-phone" aria-hidden="true"></i> (094) 123 4567 -
                                                            (094) 123 4568</li>
                                                        <li><i class="fa fa-envelope-o" aria-hidden="true"></i>
                                                            medicareplus@domain.com</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </aside>
                                    </div>
                                    <div class="footer-main-content-element col-md-3 col-sm-6">
                                        <aside class="widget">
                                            <h3 class="widget-title uni-uppercase">quick links</h3>
                                            <div class="widget-content">
                                                <div class="uni-quick-link">
                                                    <ul>
                                                        <li><a href="#"><span>+</span> Home</a></li>
                                                        <li><a href="#"><span>+</span> about</a></li>
                                                        <li><a href="#"><span>+</span> services</a></li>
                                                        <li><a href="#"><span>+</span> timetable</a></li>
                                                        <li><a href="#"><span>+</span> blog</a></li>
                                                        <li><a href="#"><span>+</span> contact</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </aside>
                                    </div>
                                    <div class="footer-main-content-element col-md-3 col-sm-6">
                                        <aside class="widget">
                                            <h3 class="widget-title uni-uppercase">latest posts</h3>
                                            <div class="widget-content">
                                                <div class="uni-footer-latest-post">
                                                    <ul>
                                                        <li>
                                                            <h4><a href="#">Lorem ipsum dolor sit amet, consectetuer</a>
                                                            </h4>
                                                            <span class="time">june 12, 2017</span>
                                                        </li>
                                                        <li>
                                                            <h4><a href="#">Aliquam tincidunt mauris eu risus amet</a></h4>
                                                            <span class="time">june 12, 2017</span>
                                                        </li>
                                                        <li>
                                                            <h4><a href="#">Morbi in sem quis dui placerat ornare column</a>
                                                            </h4>
                                                            <span class="time">june 12, 2017</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </aside>
                                    </div>
                                    <div class="footer-main-content-element col-md-3 col-sm-6">
                                        <aside class="widget">
                                            <h3 class="widget-title uni-uppercase">News<span>letter</span></h3>
                                            <div class="widget-content">
                                                <div class="uni-footer-newletter">
                                                    <div class="input-group">
                                                        <input type="email" class="form-control"
                                                               placeholder="Enter your email">
                                                        <button class="btn btn-sub" type="submit">subscribe</button>
                                                    </div>
                                                    <div class="uni-social">
                                                        <h4>Follow us</h4>
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-facebook"
                                                                               aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"
                                                                               aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-google-plus"
                                                                               aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-youtube-play"
                                                                               aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-instagram"
                                                                               aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </aside>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="copyright-area">
                        <div class="container">
                            <div class="copyright-content">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="copyright-text"><a href="templateshub.net">Templateshub</a></p>
                                    </div>
                                    <div class="col-sm-6">
                                        <ul class="copyright-menu">
                                            <li><a href="#">Term Of Use</a></li>
                                            <li><a href="#">Privacy Policy</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="plugin/jquery/jquery-2.0.2.min.js"></script>
        <script src="plugin/jquery-ui/jquery-ui.min.js"></script>
        <script src="plugin/bootstrap/js/bootstrap.js"></script>
        <script src="plugin/process-bar/tox-progress.js"></script>
        <script src="plugin/waypoint/jquery.waypoints.min.js"></script>
        <script src="plugin/counterup/jquery.counterup.min.js"></script>
        <script src="plugin/owl-carouse/owl.carousel.min.js"></script>
        <script src="plugin/jquery-ui/jquery-ui.min.js"></script>
        <script src="plugin/mediaelement/mediaelement-and-player.js"></script>
        <script src="plugin/masonry/masonry.pkgd.min.js"></script>
        <script src="plugin/datetimepicker/moment.min.js"></script>
        <script src="plugin/datetimepicker/bootstrap-datepicker.min.js"></script>
        <script src="plugin/datetimepicker/bootstrap-datepicker.tr.min.js"></script>
        <script src="plugin/datetimepicker/bootstrap-datetimepicker.js"></script>
        <script src="plugin/datetimepicker/bootstrap-datetimepicker.fr.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="plugin/lightgallery/picturefill.min.js"></script>
        <script src="plugin/lightgallery/lightgallery.js"></script>
        <script src="plugin/lightgallery/lg-pager.js"></script>
        <script src="plugin/lightgallery/lg-autoplay.js"></script>
        <script src="plugin/lightgallery/lg-fullscreen.js"></script>
        <script src="plugin/lightgallery/lg-zoom.js"></script>
        <script src="plugin/lightgallery/lg-hash.js"></script>
        <script src="plugin/lightgallery/lg-share.js"></script>
        <script src="plugin/sticky/jquery.sticky.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
        <script src="js/script.js"></script>
    </body>

</html>