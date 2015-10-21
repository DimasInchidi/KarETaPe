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
    <div class="row-fluid custom3a">
        <label>Jumlah Penduduk Indonesia Saat Ini = </label>
    </div>
    <br>
    <hr>
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
                <a class="btn btn-primary" type="submit" style="width: 70px" href="search.jsp" onclick="return popitupsmall('search.jsp')">
                    <i class="halflings-icon white search"></i>Cari</a>
            </form>
        </div>
    </div>
</div>

</div>
</div>

<jsp:include page="plate/footer.html" flush="true"/>

