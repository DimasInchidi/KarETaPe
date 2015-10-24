<!--
/*
 * Copyright 2015 @Lembuswana Mudah Tersakiti.
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
<jsp:include page="plate/header.jsp" flush="true"/>
<!-- start: Content -->
<div id="content" class="span10">
    <ul class="breadcrumb">
        <marquee direction="left" scrollamount="5" height="30px" width="100%" >Selamat datang di website KarETaPe. </marquee>
    </ul>
    <div class="row-fluid custom2">
        <div class="row-fluid sortable">                    
            <strong><h2>Manajemen User</h2></strong>
            <hr style="border-top:2px solid #578EBE;margin-bottom: 20px">        
            <a class="btn btn-primary" data-toggle="modal" data-target="#modals">
                <i class="halflings-icon white plus"></i>Tambah User
            </a>        
            <table class="table table-condensed" border="0" cellspacing="15" cellpadding="15" style="margin-top: 20px;margin-bottom: 50px">
                <thead>
                    <tr>
                        <th>NIK</th>
                        <th>NIP</th>
                        <th>Nama</th>
                        <th>Level</th>
                        <th>Aksi</th>
                    </tr>
                </thead>            
                <tbody>
                <td class="center"></td>
                <td class="center"></td>
                <td class="center"></td>
                <td class="center"></td>
                <td class="center">                
                    <a class="btn btn-info" href="#">
                        <i class="halflings-icon white edit"></i>  
                    </a>
                    <a class="btn btn-danger" href="#">
                        <i class="halflings-icon white trash"></i> 
                    </a>
                </td>

                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</div>
</div>
<div class="modal hide fade" id="modals">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">X</button>
        <h3>Tambah User</h3>
    </div>
    <div class="modal-body">
        <div class="row-fluid">
            <form action="" method="post" style="position: relative">
                <fieldset>
                    <table border="0" cellspacing="15" cellpadding="15" >
                        <tbody>
                            <tr>
                                <td><strong>NIK</strong></td>
                                <td><input class="input-large" name="username" id="username" type="text" /></td>
                            </tr>
                            <tr>
                                <td><strong>NIP</strong></td>
                                <td><input class="input-large" name="username" id="username" type="text"/></td>
                            </tr>
                            <tr>
                                <td><strong>Password</strong></td>
                                <td><input class="input-large" name="username" id="username" type="password"/></td>
                            </tr>
                            <tr>
                                <td><strong>Level</strong></td>
                                <td><select name="lvl" id="lvl" data-rel="chosen" >
                                        <option value="1">Super User</option>
                                        <option value="2">Administrator</option>
                                        <option value="3">Operator</option>                                        
                                    </select></td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>            
        </div>
    </div>
    <div class="modal-footer">        
        <button class="btn" type="button" data-dismiss="modal">Close</button>
        <button class="btn btn-primary" type="submit">Simpan</button>
        <button class="btn btn-danger" type="reset">Clear Data</button>
    </div>
    </form>
</div>
<jsp:include page="plate/footer.html" flush="true"/>

