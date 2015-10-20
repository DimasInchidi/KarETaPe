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
import javax.swing.JOptionPane;

/**
 *
 * @author DimasInchidi
 */
public class DB_Transaction {

    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static String DB_URL = "jdbc:postgresql://localhost:5432/heketonDB";
    private static final String USER = "heketonRoot";
    private static String PASS = "janganlihat";
    private ResultSet rs;
    private Connection con;
    Statement stmt;

    public Connection F_Koneksi() {
        try {
            Class.forName(JDBC_DRIVER);
            con = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (SQLException se) {
            JOptionPane.showMessageDialog(null, "Tidak dapat terhubung ke database\n" + se.getMessage(), "Kesalahan Koneksi", JOptionPane.ERROR_MESSAGE);
            if (se.getMessage().contains("denied")) {
                PASS = JOptionPane.showInputDialog("Coba dengan password berbeda\nMasukan password");
                try {
                    con = DriverManager.getConnection(DB_URL, USER, PASS);
                    stmt = con.createStatement();
                } catch (SQLException se2) {
                    System.exit(0);
                }
            }
            if (se.getMessage().contains("database")) {
                DB_URL = "jdbc:mysql://localhost/" + JOptionPane.showInputDialog("Masukan database yang digunakan");
                try {
                    con = DriverManager.getConnection(DB_URL, USER, PASS);
                    stmt = con.createStatement();
                } catch (SQLException se2) {
                    System.exit(0);
                }
            }
            System.exit(0);
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "Koneksi tidak valid\n" + e.getMessage(), "Kesalahan", JOptionPane.ERROR_MESSAGE);
            System.exit(0);
        }
        return con;
    }

    public ResultSet Select(String SQL) {
        try {
            con = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);
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
