<%@ page language="java" contentType="text/html; charset=US-ASCII"
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
%>
<!DOCTYPE html>
    <html lang="en">
<head>

    <!-- start: Meta -->
    <meta charset="utf-8">

    <title>eKaTePe</title>
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
                <a class="brand" href="index.jsp"><span>eKaTePe</span></a>

                <!-- start: Header Menu -->
                <div class="nav-no-collapse header-nav">

                    <ul class="nav pull-right">
                        <li>
                            <a class="btn" href="#">
                                <i class="halflings-icon white home"></i> Home
                            </a>
                        </li>

                                <i class="halflings-icon white home"></i> Home
                            </a>
                        </li>
                        <li class="dropdown">
                            <a class="btn" href="#">
                                <i class="halflings-icon white edit"></i> Data
                            </a>
                            <ul class="dropdown-menu">

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="btn dropdown-toggle">
                                <i class="halflings-icon white user"></i> Selamat Datang, <%=user %>
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

                    <div class="row-fluid custom3">
                        <p>eKaTePe 2.0 adalah sebuah sistem yang dibuat oleh LMT atau Lembuswana mudah tersakiti
                            dengan tujuan untuk memaksimalkan program e-ktp yang telah dilaksanakan pemerintah Indonesia.</p>
                        <p>Alasan sistem ini dibuat karena kurangnya implementasi dari e-ktp meskipun pada dasarnya
                            e-ktp merupakan sebuah program yang sangat baik. Sistem ini tidak menggantikan e-ktp melainkan
                            dapat menjamah bidang lain yang dapat dimudahkan dengan adanya e-ktp</p>
                        <p>Hasil yang diinginkan dari sistem ini selain dari memaksimalkan program e-ktp, juga memberikan
                            kemudahan kepada masyarakat dalam memaksimalkan fungsi e-ktp</p>
                        <br>
                    </div>
                    <hr>
                    <br>
                    <div class="row-fluid custom1">
                        <div class="row-fluid custom2">
                            <div class="span8 widget red" onTablet="span7" onDesktop="span8">
                                Pencarian Data
                            </div>
                        </div>
                        <div class="row-fluid custom2">
                            <form action="" method="post">
                                <label><B>NIK</B></label>
                                <input type="text" name="nik" id="nik" placeholder="Isi dengan NIK" />
                                <br>
                                <button class="btn btn-primary" type="submit" style="width: 70px">
                                    <i class="halflings-icon white search"></i>Cari</button>
                            </form>
                        </div>
                    </div>
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

