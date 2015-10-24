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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dNaga
 */
public class EditUser {
    DB_Transaction db = new DB_Transaction();
    
    protected void edPend(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{                
        String nik,nip,nama,jabatan,kel,kec,kota,prov,pass,lv;
        
        nik = request.getParameter("nik");
        nip = request.getParameter("lahir");
        nama = request.getParameter("nama");
        jabatan = request.getParameter("jabatan");
        kel = request.getParameter("kel");
        kec = request.getParameter("kec");
        kota = request.getParameter("kota");
        prov = request.getParameter("provinsi");
        pass = request.getParameter("password");
        lv = request.getParameter("level");
        
        String value = "nip='" + nip + "',nama='" + nama + "',jabatan='" + jabatan + "',kelurahan='" + kel + "',kelurahan='" + kec+ "',kelurahan='" + kota + "',=kelurahan'" + prov;
        String value1 = "nip='" + nip + ",password=md5('" + pass + "'),level = '" + lv + "'";
        
        db.Update("lmt_detail_user", value, nik);
        db.Insert("lmt_user", value1);
        response.sendRedirect("dashboard");
    }
}
