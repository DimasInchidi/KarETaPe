/*
 * Copyright (C) 2015 DimasInchidi @ Lembuswana Mudah Tersakiti
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
 * @author DimasInchidi @ Lembuswana Mudah Tersakiti
 */
public class Privilages extends DB_Transaction {
    String User = "";
    String Level = "";

    public boolean doLogin(String Username, String Pass) {
        String con = "WHERE nip = '" + Username + "' AND password = md5('" + Pass + "')";
        try{
            ResultSet rs = super.Select("username, level","lmt_user",con);
            while(rs.next()){
                User = rs.getString(0);
                Level = rs.getString(1);
            }
        }catch(Exception ex){
            return false;
        }
        return true;
    }
}
