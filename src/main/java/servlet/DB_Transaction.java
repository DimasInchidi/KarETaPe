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

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author DimasInchidi
 */
public class DB_Transaction {

    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_URL = "jdbc:postgresql://ec2-54-204-15-48.compute-1.amazonaws.com:5432/d43cvp6kpf1the";
    private static final String USER = "khwivmymedwodp";
    private static final String PASS = "rnNyTeGxo0PCll83A-6Db__n4v";
    private ResultSet rs;
    private Connection con;
    Statement stmt;

    public Connection F_Koneksi() {
        try {
            Class.forName(JDBC_DRIVER);
            con = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (SQLException se) {
            System.out.println("Tidak dapat terhubung ke database\n" + se.getMessage());
        } catch (ClassNotFoundException e) {
            System.out.println("Koneksi tidak valid\n" + e.getMessage());
        }
        return con;
    }

    public ResultSet Select(String data, String table, String condition) {
        try {
            String sql = "SELECT " + data + " FROM " + table + " " +condition;
            con = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
        } catch (Exception ex) {
            rs = null;
        }
        return rs;
    }

    public boolean Update(String SQL) {
        try {
            con = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = con.createStatement();
            stmt.executeUpdate(SQL);
            con.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public void CloseCon() {
        try {
            con.close();
        } catch (SQLException ex) {
        }
    }
}
