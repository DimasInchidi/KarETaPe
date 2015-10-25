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
public class Search extends DB_Transaction{
    
    String nik = "";
    String nama = "";
    String tampattl = "";
    String ttl = "";
    String jk = "";
    String hidup = "";
    String alamat = "";
    String rt = "";
    String rw = "";
    String kelurahan = "";
    String kecamatan = "";
    String provinsi = "";
    String kota = "";
    String agama = "";
    String status = "";
    String pekerjaan = "";
    String warga = "";
    String foto = "";
    String sidik = "";
    String ttd = "";
    String gol = "";
    
    String jabatan = "", lv = "",nip="";
    
    public boolean SearchNIK(String table,String NIK){
        String con= " WHERE nik = '"+NIK+"'";
        try{
            ResultSet rs = super.Select("*",table,con);
            rs.next();
                nik = rs.getString(1);
                nama = rs.getString(2);
                tampattl = rs.getString(3);
                ttl = new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate(4));
                jk = rs.getString(5);
                hidup = rs.getString(6);
                alamat = rs.getString(7);
                rt = rs.getString(8);
                rw = rs.getString(9);
                kelurahan = rs.getString(10);
                kecamatan = rs.getString(11);
                provinsi = rs.getString(12);
                kota = rs.getString(13);
                agama = rs.getString(14);
                status = rs.getString(15);
                pekerjaan = rs.getString(16);
                warga = rs.getString(17);
                gol = rs.getString(18);
                return true;
            
        }catch(Exception ex){
            System.out.println("Error : " + ex);
        }
        return false;
    }
    public boolean SearchDetUser(String table,String NIK){
        String con= " WHERE nik = '"+NIK+"'";
        try{
            ResultSet rs = super.Select("*",table,con);
            while(rs.next()){
                nik = rs.getString(0);
                nip = rs.getString(1);
                nama = rs.getString(2);
                jabatan = rs.getString(3);
                kelurahan = rs.getString(9);
                kecamatan = rs.getString(10);
                provinsi = rs.getString(11);
                kota = rs.getString(12);
                return true;
            }
        }catch(Exception ex){
            System.out.println("Error : " + ex);
        }
        return false;
    }
    public boolean SearchUser(String table,String NIK){
        String con= " WHERE nik = '"+NIK+"'";
        try{
            ResultSet rs = super.Select("*",table,con);
            while(rs.next()){
                lv = rs.getString(3);
                return true;
            }
        }catch(Exception ex){
            System.out.println("Error : " + ex);
        }
        return false;
    }
}
