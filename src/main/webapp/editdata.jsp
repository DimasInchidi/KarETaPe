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

        <strong><h2>Ubah Data Penduduk</h2></strong>
        <hr>
        <div class="row-fluid sortable">

            <div class="box-content">
                <form class="form-horizontal">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="nik">NIK </label>
                            <div class="controls">
                                <input type="text" class="input-xlarge typeahead" id="nik"  data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]'>                                   
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="nama">Nama</label>
                            <div class="controls">
                                <input class="input-xlarge focused" id="nama" type="text">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="date01">Tanggal Lahir</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Save changes</button>
                            <button type="reset" class="btn">Cancel</button>
                        </div>
                    </fieldset>
                </form>   

            </div>
        </div><!--/span-->

    </div>

</div>
</div>


<jsp:include page="plate/footer.html" flush="true"/>

