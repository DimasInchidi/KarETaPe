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
import java.io.InputStream;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 *
 * @author dNaga
 */

@WebServlet("/inuser")
@MultipartConfig(maxFileSize = 16177215)

public class InsPend extends HttpServlet{
    DB_Transaction db = new DB_Transaction();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        String nik,nama,tampatl,tl,jk,hidup,alamat, rt,rw,kel,kec;
        String prov,kota,agama,status,pekerjaan,warga,foto,sidik,ttd,gol;
        
        nik = request.getParameter("nik");
        nama = request.getParameter("nama");
        tampatl = request.getParameter("lahir");
        SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
        tl = request.getParameter("lahir");
        tl = date.format(tl);
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
        gol = request.getParameter("gold");
        
        String value = nik + "," + nama + "," + tampatl + "," + tl + "," + jk + "," + hidup 
                + "," + alamat + "," + rt + "," + rw + "," + kel + "," + kec + "," + prov
                + "," + kota + "," + agama + "," + status + "," + pekerjaan + "," + warga
                + "," + gol;
        boolean ins = db.Insert("lmt_ektp (nik,nama,tempat_lahir,tanggal_lahir,sex,hidup,alamat,rt,rw,kelurahan,kecamatan,"
                + "provinsi,kota,agama,status,pekerjaan,warga,goldarah)", value);
        response.sendRedirect("dashboard");
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
