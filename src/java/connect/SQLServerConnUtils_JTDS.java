/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class SQLServerConnUtils_JTDS {
    // Kết nối vào SQLServer.
    // (Sử dụng thư viện điều khiển JTDS)

    public static Connection getSQLServerConnection_JTDS(){
        // Chú ý: Thay đổi các thông số kết nối cho phù hợp.
        String hostName = "LAPTOP-ATNHOQI8";
        String sqlInstanceName = "SQLEXPRESS";
        String database = "QuanLyLapDatVaSuaChua";
        String userName = "sa";
        String password = "12345";
        Connection conn=null;
        try {
            conn= getSQLServerConnection_JTDS(hostName, sqlInstanceName, database, userName, password);
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Connect rỗng");
        }
        return conn;
    }

    // Kết nối tới SQL Server sử dụng thư viện JTDS.
    private static Connection getSQLServerConnection_JTDS(String hostName, //
            String sqlInstanceName, String database, String userName, String password)
            throws ClassNotFoundException, SQLException {

        Class.forName("net.sourceforge.jtds.jdbc.Driver");

        // Cấu trúc URL Connection đối với SQL Server:
        // Ví dụ:
        // jdbc:jtds:sqlserver://localhost:1433/simplehr;instance=SQLEXPRESS
        String connectionURL = "jdbc:jtds:sqlserver://" + hostName + ":1433/" //
                + database;// + ";instance=" + sqlInstanceName;

        Connection conn = DriverManager.getConnection(connectionURL, userName, password);
        return conn;
    }

}
