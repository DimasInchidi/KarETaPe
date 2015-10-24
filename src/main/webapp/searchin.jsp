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

        <strong><h2>Pencarian Data Penduduk</h2></strong>
        <hr style="border-top:2px solid #578EBE">
        <div class="row-fluid sortable">

            <div class="box-content" style="padding-bottom: 30px">
                <form class="form-horizontal">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="nik">NIK </label>
                            <div class="controls">
                                <input type="text" class="input-xlarge typeahead" id="nik">                                   
                                <button class="btn" type="submit">Search</button><button class="btn" type="reset">Cancel</button>
                            </div>
                        </div>                        
                    </fieldset>
                </form>
                <hr style="border-top:2px solid #578EBE">
            </div>            
        </div><!--/span-->        
    </div>
    <div class="row-fluid custom2">
        <form class="form-horizontal">
            <fieldset>
                <div class="control-group">
                    <label class="control-label">NIK :</label>                    
                    <div class="controls">
                        <p class="help-block">taro sini namanya</p>
                    </div>  
                </div>
                <div class="control-group">
                    <label class="control-label">Nama :</label>                    
                    <div class="controls">
                        <p class="help-block">taro sini namanya</p>
                    </div>  
                </div>
                <div class="form-actions">
                <a href="" type="button" class="btn btn-primary">Ubah</a>
                <a href="search.jsp" type="button" class="btn btn-inverse">Cetak</a>
                </div>
            </fieldset>
        </form>
    </div>

</div>
</div
</div>
</div>


<jsp:include page="plate/footer.html" flush="true"/>

