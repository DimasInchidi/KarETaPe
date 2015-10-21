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
<jsp:include page="plate/header.html" flush="true"/>
<!-- start: Content -->
<div id="content" class="span10">
    <ul class="breadcrumb">
        <marquee direction="left" scrollamount="5" height="20px" width="100%" >Selamat datang di website KarETaPe. </marquee>
    </ul>
    <div class="row-fluid custom2">
        <strong><h2>Tambah Data Penduduk</h2></strong>
        <hr>
        <form action="" method="post">
            <table border="0" cellspacing="5" cellpadding="5" >                                
                <tbody>
                    <tr>
                        <td><strong>NIK</strong></td>
                        <td><input type="text" name="nik" placeholder="Isi dengan NIK" /></td>
                    </tr>
                    <tr>
                        <td><strong>Nama</strong></td>
                        <td><input type="text" name="nik" placeholder="Isi dengan NIK" /></td>
                    </tr>
                    <tr>
                        <td><strong>Tempat Lahir</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Tanggal Lahir</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Alamat</strong></td>
                        <td></td>
                    </tr>                                    
                    <tr>
                        <td><strong>RT</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Kelurahan/Desa</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Kecamatan</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Kota</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Provinsi</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Agama</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Status Perkawinan</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Pekerjaan</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Kewarganegaraan</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Foto</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Tanda Tangan</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Sidik Jari</strong></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </div>

    <br>

</div>

</div>

</div>
<jsp:include page="plate/footer.html" flush="true"/>

