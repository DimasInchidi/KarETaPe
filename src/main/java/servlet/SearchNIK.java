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
public class SearchNIK extends DB_Transaction{
    String nama = "";
    String kota = "";
    String ttl = "";
    String jk = "";
    String foto = "";
    
       
    public void Search(String NIK){
        String con= "WHERE nik = '"+NIK+"'";
        try{
            ResultSet rs = super.Select("*","lmt_ektp",con);
            while(rs.next()){
                nama = rs.getString(0);
                kota = rs.getString(1);
                ttl = rs.getString(2);
                jk = rs.getString(3);
                foto = rs.getString(4);
            }
        }catch(Exception ex){
            System.out.println("Error : " + ex);
        }
    }
    
}
