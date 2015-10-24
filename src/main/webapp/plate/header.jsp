<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- start: Meta -->
        <meta charset="utf-8">
        <title>KarETaPe</title>
        <meta name="description" content="eKaTePe">
        <meta name="author" content="LMT">
        <meta name="keyword" content="Metro, Metro UI, dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
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
                    <a class="brand" href="dashboard"><span>KarETaPe</span></a>
                    <!-- start: Header Menu -->
                    <div class="nav-no-collapse header-nav">
                        <ul class="nav pull-right">
                            <li>
                                <a class="btn" href="dashboard">
                                    <i class="halflings-icon white home"></i> Home
                                </a>
                            </li>
                            </li>
                            <li>
                                <a class="btn" href="inputdata">
                                    <i class="halflings-icon white list-alt"></i> Input Data
                                </a>                                
                            </li>
                            <li>
                                <a class="btn" href="search">
                                    <i class="halflings-icon white search"></i> Pencarian
                                </a>                                
                            </li>
                            <%
                            try{
                            String prev=(String)session.getAttribute("level");                            
                            if(prev.equals("1"))
                            {
                            out.print("<li>");
                            out.print("<a class='btn' href=''>");
                            out.print("<i class='halflings-icon white cog'></i> Manajemen User");
                            out.print("</a>");                             
                            out.print("</li>");
                            }else if(prev.equals("2")){
                            out.print("<li>");
                            out.print("<a class='btn' href=''>");
                            out.print("<i class='halflings-icon white cog'></i> Data Operator");
                            out.print("</a>");                             
                            out.print("</li>");
                            }else {

                            }
                            }
                            catch (Exception e){
                            }                                                     
                            %>
                            <li class="dropdown">
                                <a class="btn dropdown-toggle">
                                    <i class="halflings-icon white user"></i> Selamat Datang, <%=session.getAttribute("user")%>
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

        <div class="container-fluid-full">
            <div class="row-fluid" style="min-height: 100%;width: 90%;margin-left: auto; margin-right: auto; margin-bottom: 30px">

                <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">Warning!</h4>
                    <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                </div>
                </noscript>