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
<%@ page language="java" import="servlet.DB_Transaction"%>
<%@ page import="java.sql.*"%>
<%
DB_Transaction db = new DB_Transaction();
%>
<jsp:include page="plate/header.jsp" flush="true"/>
<!-- start: Content -->
<div id="content" class="span10">
    <ul class="breadcrumb">
        <marquee direction="left" scrollamount="5" height="30px" width="100%" >Selamat datang di website KarETaPe. </marquee>
    </ul>
    <div class="row-fluid custom2">
        <div class="row-fluid sortable">

            <strong><h2>Tambah Data Parameter</h2></strong>
            <hr style="border-top:2px solid #578EBE">

            <form method="post" action="">
                <br>
                <label><strong>Jabatan</strong></label>
                <select name="jab" id="jab">

                </select>
                </table>
                <label><strong>Parameter</strong></label>
                <table id="formku">
                    <tr>
                        <td><input type="text" name="inputan1"></td>
                        <td><a type="button" class="btn btn-primary" onclick="tambah_form();
                                return false;" >Add</a>
                            <a type="button" class="btn btn-danger" onclick="kurangi_form();
                                    return false;">Remove</a></td>
                    </tr>
                </table>
                <div class="form-actions">
                    <a type="submit" class="btn btn-primary" name="ok" value="Submit">Simpan</a>
                </div>
            </form>
        </div>
        <br>
        <hr style="border-top:2px solid #578EBE">

    </div>
</div>
<br>
</div>
</div>
</div>
<jsp:include page="plate/footer.html" flush="true"/>

