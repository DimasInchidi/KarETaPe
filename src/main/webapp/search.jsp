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

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
            <title>Data Pencarian</title>
            <link id="bootstrap-style" href="assets/css/bootstrap.min.css" rel="stylesheet">
            <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet">
            <link id="base-style" href="assets/css/style.css" rel="stylesheet">
            <link id="base-style-responsive" href="assets/css/style-responsive.css" rel="stylesheet">
            <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>       
            
        </head>
        <body>            
            <div class="container-fluid-full">
                <h2>Data Penduduk</h2>
                <div class="row-fluid">
                    
                </div>
            </div>
            
            
            <script src="assets/js/jquery-1.9.1.min.js"></script>
            <script src="assets/js/jquery-migrate-1.0.0.min.js"></script>
            <script src="assets/js/jquery-ui-1.10.0.custom.min.js"></script>
            <script src="assets/js/jquery.ui.touch-punch.js"></script>
            <script src="assets/js/modernizr.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/jquery.cookie.js"></script>
            <script src="assets/js/fullcalendar.min.js"></script> 
            <script src="assets/js/jquery.elfinder.min.js"></script>  
            <script src="assets/js/excanvas.js"></script>
            <script src="assets/js/jquery.chosen.min.js"></script>
            <script src="assets/js/jquery.uniform.min.js"></script>
            <script src="assets/js/jquery.cleditor.min.js"></script>
            <script src="assets/js/jquery.iphone.toggle.js"></script>
            <script src="assets/js/jquery.uploadify-3.1.min.js"></script>
            <script src="assets/js/jquery.gritter.min.js"></script>
            <script src="assets/js/jquery.imagesloaded.js"></script>
            <script src="assets/js/jquery.masonry.min.js"></script>
            <script src="assets/js/jquery.knob.modified.js"></script>
            <script src="assets/js/jquery.noty.js"></script>
            <script src="assets/js/counter.js"></script>
            <script src="assets/js/retina.js"></script>
            <script src="assets/js/custom.js"></script>
        </body>
    </html>
