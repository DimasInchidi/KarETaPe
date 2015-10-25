/*
 * Copyright (C) 2015 dNaga @ Lembuswana Mudah Tersakiti
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
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dNaga
 */
public class SearchNIK extends HttpServlet{
    Search s = new Search();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        boolean DataExist = s.SearchNIK("lmt_ektp",request.getParameter("nik"));
        if (DataExist) {
            System.out.println("Data exist");
            request.setAttribute("nik",s.nik);
            request.setAttribute("nama",s.nama);
            request.setAttribute("tampattl",s.tampattl);
            request.setAttribute("ttl",s.ttl);
            request.setAttribute("jk",s.jk);
            request.setAttribute("hidup",s.hidup);
            request.setAttribute("alamat",s.alamat);
            request.setAttribute("rt",s.rt);
            request.setAttribute("rw",s.rw);
            request.setAttribute("kelurahan",s.kelurahan);
            request.setAttribute("kecamatan",s.kecamatan);
            request.setAttribute("provinsi",s.provinsi);
            request.setAttribute("kota",s.kota);
            request.setAttribute("agama",s.agama);
            request.setAttribute("status",s.status);
            request.setAttribute("pekerjaan",s.pekerjaan);
            request.setAttribute("warga",s.warga);
            request.setAttribute("gol",s.gol);
            request.getRequestDispatcher("searchin.jsp").forward(request, response); 
            System.out.println(s.jk);
        } else {
            System.out.println("dataNOTexist");
        }
            
         
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
