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

import java.sql.ResultSet;

/**
 *
 * @author dNaga
 */
public class SearchUser extends DB_Transaction{
    String NIK = ""; String namaU = ""; String jabatan = ""; String kel = ""; String kec = ""; String kot = ""; String prov = "";
    String lv = "";
    
    public void SerachUser(String nip){
        String con= " WHERE nip = '"+nip+"'";
        try{
            ResultSet rs = super.Select("lmt_detail_user.NIK,"
                    + "lmt.detail_user.nama,"
                    + "lmt_user.level,"
                    + "lmt_detail_user.jabatan,"
                    + "lmt_detail_user.kelurahan,"
                    + "lmt_detail_user.kecamatan,"
                    + "lmt_detail_user.kota,"
                    + "lmt_detail_user.provinsi",
                    "lmt_detail_user INNER JOIN lmt_user ON lmt_detail_user.nip = lmt_user.nip",
                    con);
            while(rs.next()){
                NIK = rs.getString(0);
                namaU = rs.getString(1);
                lv = rs.getString(2);
                jabatan = rs.getString(3);
                kel = rs.getString(4);
                kec = rs.getString(5);
                kot = rs.getString(6);
                prov = rs.getString(7);
            }
        }catch(Exception ex){
            System.out.println("Error : " + ex);
        }
    }
}
