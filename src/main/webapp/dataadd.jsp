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
            <div class="box span12">
                <div class="box-header" data-original-title>
                    <strong><h2>Tambah Data Penduduk</h2></strong>
                </div>
                <div class="box-content">
                    <form action="inpend" method="post" enctype="multipart/form-data">
                        <table border="0" cellspacing="15" cellpadding="15" >
                            <tbody>
                                <tr>
                                    <td><strong>NIK</strong></td>
                                    <td><input type="text" name="nik" placeholder="NIK" /></td>
                                </tr>
                                <tr>
                                    <td><strong>Nama</strong></td>
                                    <td><input type="text" name="nama" placeholder="Nama Lengkap" /></td>
                                </tr>
                                <tr>
                                    <td><strong>Tempat Lahir</strong></td>
                                    <td><input name="lahir" type="text" placeholder="Tanggal Lahir"></td>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Tanggal Lahir</strong></td>
                                    <td><input name="tgllahir" type="text" class="input-xlarge datepicker" id="datepicker1" placeholder="Tanggal Lahir"></td>
                                </tr>
                                <tr>
                                    <td><strong>Jenis Kelamin</strong></td>
                                    <td>
                                        <label class="radio">
                                            <input type="radio" name="jk" id="optionsRadios1" value="1" checked="">
                                            Laki-laki
                                        </label>
                                        <div style="clear:both"></div>
                                        <label class="radio">
                                            <input type="radio" name="jk" id="optionsRadios1" value="0">
                                            Perempuan
                                        </label></td>
                                </tr>
                                <tr>
                                    <td><strong>Golongan Daarah</strong></td>
                                    <td><select name="gold" id="gold" data-rel="chosen" >
                                            <option value="-">-</option>
                                            <option value="A">A</option>
                                            <option value="B">B</option>
                                            <option value="AB">ABO</option>
                                            <option value="O">O</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Agama</strong></td>
                                    <td><select name="agama" id="agama" data-rel="chosen" >
                                            <%
try{
    Connection cn = db.F_Koneksi();
    PreparedStatement ps = cn.prepareStatement("SELECT id_agm,desk FROM lmt_agama");
    ResultSet res = ps.executeQuery();
    String id;
    String agama;
    while(res.next()){
        id = res.getString(1);
        agama = res.getString(2);
        out.print("<option value='"+id+"'>"+agama+"</option>");
    }
    cn.close();
}catch(Exception e){
    out.print(e);
}

                                            %>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Status Perkawinan</strong></td>
                                    <td><select name="status" id="status" data-rel="chosen" >
                                            <option value="1">Belum Kawin</option>
                                            <option value="2">Kawin</option>
                                            <option value="3">Lainnya</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Pekerjaan</strong></td>
                                    <td><select name="kerja" id="kerja" data-rel="chosen" >
                                             <%
try{
    Connection cn = db.F_Koneksi();
    PreparedStatement ps = cn.prepareStatement("SELECT id_kerja,desk FROM lmt_kerja");
    ResultSet res = ps.executeQuery();
    String id;
    String kerja;
    while(res.next()){
        id = res.getString(1);
        kerja = res.getString(2);
        out.print("<option value='"+id+"'>"+kerja+"</option>");
    }
    cn.close();
}catch(Exception e){
    out.print(e);
}
                                            %>
                                        </select>
                                    </td>
                                </tr>
                                <tr><td colspan="3"><hr style="border-top:1px solid #578EBE"></td></tr>
                                <tr>
                                    <td><strong>Alamat</strong></td>
                                    <td><textarea name="alamat" id="alamat" rows="3" placeholder="Alamat"></textarea></td>
                                </tr>
                                <tr>
                                    <td><strong>RT</strong></td>
                                    <td><input type="text" name="rt" placeholder="No RT" /></td>
                                </tr>
                                <tr>
                                    <td><strong>RW</strong></td>
                                    <td><input type="text" name="rw" placeholder="No RW" /></td>
                                </tr>
                                <tr>
                                    <td><strong>Kelurahan/Desa</strong></td>
                                    <td><input type="text" name="lurah" placeholder="Nama Kelurahan" />
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Kecamatan</strong></td>
                                    <td><input type="text" name="kec" placeholder="Nama Kecamatan" />
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Kota/Kabupaten</strong></td>
                                    <td><input type="text" name="kota" placeholder="Nama Kota/Kabupaten" />
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Provinsi</strong></td>
                                    <td><select name="provinsi" id="provinsi" data-rel="chosen" >
                                             <%
try{
    Connection cn = db.F_Koneksi();
    PreparedStatement ps = cn.prepareStatement("SELECT * FROM master_provinsi");
    ResultSet res = ps.executeQuery();
    String id;
    String prov;
    while(res.next()){
        id = res.getString(1);
        prov = res.getString(2);
        out.print("<option value='"+id+"'>"+prov+"</option>");
    }
    cn.close();
}catch(Exception e){
    out.print(e);
}
                                            %>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Kewarganegaraan</strong></td>
                                    <td><select name="warga"  id="warga" data-rel="chosen" >
                                            <option value="1">WNI</option>
                                            <option value="0">WNA</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Foto</strong></td>
                                    <td><input name="foto" class="input-file uniform_on" id="fileInput" type="file"></td>
                                </tr>
                                <tr>
                                    <td><strong>Tanda Tangan</strong></td>
                                    <td><input name="ttd" class="input-file uniform_on" id="fileInput1" type="file"></td>
                                </tr>
                                <tr>
                                    <td><strong>Sidik Jari</strong></td>
                                    <td><input name="sjari" class="input-file uniform_on" id="fileInput2" type="file"></td>
                                </tr>
                                <tr><td colspan="3"><hr style="border-top:1px solid #578EBE"></td></tr>
                                <tr>
                                    <td><strong>Status</strong></td>
                                    <td>
                                        <label class="radio">
                                            <input type="radio" name="hidup" id="optionsRadios2" value="1" checked="">
                                            Masih Hidup
                                        </label>
                                        <div style="clear:both"></div>
                                        <label class="radio">
                                            <input type="radio" name="hidup" id="optionsRadios2" value="0">
                                            Sudah Meninggal
                                        </label></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Save changes</button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <br>

</div>

</div>

</div>
<jsp:include page="plate/footer.html" flush="true"/>

