/*
 * Copyright (C) 2015 dNaga
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author dNaga
 */
public class InsPend extends HttpServlet{
    DB_Transaction db = new DB_Transaction();
    
    protected void insPend(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        String nik,nama,tampatl,tl,jk,hidup,alamat, rt,rw,kel,kec;
        String prov,kota,agama,status,pekerjaan,warga,foto,sidik,ttd,gol;
        
        nik = request.getParameter("nik");
        nama = request.getParameter("nama");
        tampatl = request.getParameter("lahir");
        tl = request.getParameter("tgllahir");
        jk = request.getParameter("jk");
        hidup = request.getParameter("hidup");
        alamat = request.getParameter("alamat");
        rt = request.getParameter("rt");
        rw = request.getParameter("rw");
        kel = request.getParameter("kel");
        kec = request.getParameter("kec");
        prov = request.getParameter("provinsi");
        kota = request.getParameter("kota");
        agama = request.getParameter("agama");
        status = request.getParameter("status");
        pekerjaan = request.getParameter("kerja");
        warga = request.getParameter("warga");
        foto = request.getParameter("foto");
        sidik = request.getParameter("sjari");
        ttd = request.getParameter("ttd");
        gol = request.getParameter("gold");
        
        String value = nik + "," + nama + "," + tampatl + "," + tl + "," + jk + "," + hidup 
                + "," + alamat + "," + rt + "," + rw + "," + kel + "," + kec + "," + prov
                + "," + kota + "," + agama + "," + status + "," + pekerjaan + "," + warga
                + "," + foto + "," + sidik + "," + ttd + "," + gol;
        boolean ins = db.Insert("lmt_ektp", value);
        if(ins){
            response.sendRedirect("dashboard");
        }else{
            response.sendRedirect("dashboard");
        }
    }
    
}
