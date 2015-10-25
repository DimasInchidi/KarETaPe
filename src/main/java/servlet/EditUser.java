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
import javax.servlet.http.HttpSession;

/**
 *
 * @author dNaga
 */
public class EditUser extends HttpServlet{
    DB_Transaction db = new DB_Transaction();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
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
