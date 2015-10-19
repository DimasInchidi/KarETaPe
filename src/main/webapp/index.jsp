<!DOCTYPE html>
<!--
/*
 * Copyright 2015 DimasInchidi @ Lembuswana Mudah Tersakiti.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
-->
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- start: Meta -->
    <meta charset="utf-8">
    <title>eKaTePe</title>
    <meta name="description" content="eKaTePe">
    <meta name="author" content="dikdave">
    <!-- end: Meta -->

    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end: Mobile Specific -->

    <!-- start: CSS -->
    <link id="bootstrap-style" href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link id="base-style" href="assets/css/style.css" rel="stylesheet">
    <link id="base-style-responsive" href="assets/css/style-responsive.css" rel="stylesheet">
    <link href="assets/font/fontapis.css" rel='stylesheet' type='text/css'>
    <!-- end: CSS -->


    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <link id="ie-style" href="css/ie.css" rel="stylesheet">
    <![endif]-->

    <!--[if IE 9]>
        <link id="ie9style" href="css/ie9.css" rel="stylesheet">
    <![endif]-->

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
                <a class="brand" href="index.html"><span>eKaTePe</span></a>

                <!-- start: Header Menu -->
                <div class="header-nav">

                    <ul class="nav pull-right">
                        <li>
                            <a class="btn" data-toggle="modal" data-target="#modlog">
                                <i class="halflings-icon white search"></i> Cari
                            </a>
                        </li>

                        <li>
                            <a class="btn" data-toggle="modal" data-target="#modlog">
                                <i class="halflings-icon white off"></i> Login
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- end: Header Menu -->

            </div>
        </div>
    </div>
    <!-- start: Header -->

        <div class="container-fluid-full">
        <div class="row-fluid">

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

            <div class="row-fluid" style="text-align:center;">
                <p>asdasdasd
                    asdasdasdasdasd
                    asdasdasdasdasdasd</p>
            </div>
            <div class="row-fluid" style="margin-left:17%;">

                <div class="span8 widget blue" onTablet="span7" onDesktop="span8">

                    <div id="stats-chart2"  style="height:282px" ></div>

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
    <div class="modal hide fade" id="modlog">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" >×</button>
            <h3>Login to Your Account</h3>
        </div>
        <div class="modal-body">
            <div class="row-fluid">
                <form action="Login" method="POST" style="position: relative; text-align:center;">
                    <fieldset>

                            <div class="input-prepend" title="Username">
                                <span class="add-on"><i class="halflings-icon user"></i></span>
                                <input class="input-large" name="username" id="username" type="text" placeholder="type username"/>
                            </div>
                            <div class="clearfix"></div>

                            <div class="input-prepend" title="Password">
                                <span class="add-on"><i class="halflings-icon lock"></i></span>
                                <input class="input-large" name="password" id="password" type="password" placeholder="type password"/>
                            </div>
                            <div class="clearfix"></div>

                            <label class="remember" for="remember"><input type="checkbox" id="remember" />Remember me</label>
                    </form>
                </div>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal">Close</a>
            <a href="#" class="btn btn-primary">Login</a>
        </div>
    </div>


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

