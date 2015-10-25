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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dNaga
 */
public class SearchUser extends HttpServlet{
    Search s = new Search();
    Search s1 = new Search();
    
    String NIK = ""; String namaU = ""; String jabatan = ""; String kel = ""; String kec = ""; String kot = ""; String prov = "";
    String lv = "";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        boolean DataExist = s.SearchDetUser("lmt_detail_user",request.getParameter("nik"));
        boolean DataExist1 = s1.SearchUser("lmt_user",request.getParameter("nik"));
        if (DataExist) {
            NIK = s.nik;
            namaU = s.nama;
            jabatan = s.jabatan;
            kel = s.kelurahan;
            kec = s.kecamatan;
            kot = s.kota;
            prov = s.provinsi;
            
        } else {
            System.out.println("userNOTexist");
        }
        if (DataExist1) {
            lv = s.lv;
            
        } else {
            System.out.println("userNOTexist");
        }
            response.sendRedirect("search");
         
    }
}
