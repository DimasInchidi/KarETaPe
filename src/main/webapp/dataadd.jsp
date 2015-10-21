<%--<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII"%>
<%
//allow access only if session exists
String user = null;
if(session.getAttribute("user") == null){
    response.sendRedirect("/");
}else user = (String) session.getAttribute("user");
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
    if(cookie.getName().equals("user")) userName = cookie.getValue();
    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}
<%=user %> <-- ini ditaro hbs selamat datang jgn lupa
%>--%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- start: Meta -->
        <meta charset="utf-8">

        <title>KarETaPe</title>
        <meta name="description" content="eKaTePe">
        <meta name="author" content="LMT">
        <meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- end: Mobile Specific -->

        <!-- start: CSS -->

        <link id="bootstrap-style" href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link id="base-style" href="assets/css/style.css" rel="stylesheet">
        <link id="base-style-responsive" href="assets/css/style-responsive.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>

        <!-- end: CSS -->




        <!-- start: Favicon -->
        <link rel="shortcut icon" href="img/favicon.ico">
        <!-- end: Favicon -->




    </head>

    <body>
        <!-- start: Header -->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.jsp"><span>KarETaPe</span></a>

                    <!-- start: Header Menu -->
                    <div class="nav-no-collapse header-nav">

                        <ul class="nav pull-right">
                            <li>
                                <a class="btn" href="welcome.jsp">
                                    <i class="halflings-icon white home"></i> Home
                                </a>
                            </li>


                            </li>
                            <li class="dropdown">
                                <a class="btn" href="#">
                                    <i class="halflings-icon white list-alt"></i> Data Penduduk
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><i class="halflings-icon edit"></i> Tambah Data</a></li>
                                    <li><a href="Logout"><i class="halflings-icon check"></i> Ubah Data</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="btn dropdown-toggle">
                                    <i class="halflings-icon white user"></i> Selamat Datang, LMT                                    
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-menu-title">
                                        <span>Account Settings</span>
                                    </li>
                                    <li><a href="#"><i class="halflings-icon user"></i> Profile</a></li>
                                    <li><a href="Logout"><i class="halflings-icon off"></i> Logout</a></li>
                                </ul>

                            </li>
                            <!-- end: User Dropdown -->
                        </ul>
                    </div>
                    <!-- end: Header Menu -->

                </div>
            </div>
        </div>
        <!-- start: Header -->

        <div class="container-fluid-full">
            <div class="row-fluid" style="width: 90%;margin-left: auto; margin-right: auto; margin-bottom: 30px">

                <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">Warning!</h4>
                    <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                </div>
                </noscript>

                <!-- start: Content -->
                <div id="content" class="span10">


                    <ul class="breadcrumb">
                        <marquee direction="left" scrollamount="5" height="20px" width="100%" >Selamat datang di website eKaTePe. </marquee>
                    </ul>

                    <div class="row-fluid custom3a">
                        <strong><h2>Tambah Data Penduduk</h2></strong>
                        <hr>
                        <form action="" method="post">
                            
                        </form>
                    </div>
                    
                    <br>
                    
                </div>

            </div>

        </div>
        <footer>
            <p>
                <span style="text-align:left;float:right">&copy; 2015 | Lembuswana Mudah Tersakiti</span>
            </p>
        </footer>


        <div class="clearfix"></div>



        <!-- start: JavaScript-->
        <script src="assets/js/forsearch.js"></script>
        <script src="assets/js/jquery-1.9.1.min.js"></script>
        <script src="assets/js/jquery-migrate-1.0.0.min.js"></script>
        <script src="assets/js/jquery-ui-1.10.0.custom.min.js"></script>
        <script src="assets/js/jquery.ui.touch-punch.js"></script>
        <script src="assets/js/modernizr.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/fullcalendar.min.js"></script>
        <script src="assets/js/excanvas.js"></script>
        <script src="assets/js/jquery.flot.js"></script>
        <script src="assets/js/jquery.chosen.min.js"></script>
        <script src="assets/js/jquery.uniform.min.js"></script>
        <script src="assets/js/jquery.cleditor.min.js"></script>
        <script src="assets/js/jquery.iphone.toggle.js"></script>
        <script src="assets/js/jquery.uploadify-3.1.min.js"></script>
        <script src="assets/js/jquery.gritter.min.js"></script>
        <script src="assets/js/jquery.imagesloaded.js"></script>
        <script src="assets/js/jquery.masonry.min.js"></script>
        <script src="assets/js/jquery.knob.modified.js"></script>
        <script src="assets/js/counter.js"></script>
        <script src="assets/js/retina.js"></script>
        <script src="assets/js/custom.js"></script>
        <!-- end: JavaScript-->

    </body>
</html>

