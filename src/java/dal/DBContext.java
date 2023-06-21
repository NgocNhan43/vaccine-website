package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

	public static String DRIVERNAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static String DBURL = "jdbc:sqlserver://NGOCNHAN\\SQLEXPRESS:1433;databaseName=vaccine4;encrypt=false";
	public static String USERDB = "admin";
	public static String PASSDB = "1";

	public static Connection getConnect() {
		Connection conn = null;
		try {
			Class.forName(DRIVERNAME);
			conn = DriverManager.getConnection(DBURL, USERDB, PASSDB);
			System.out.println("Connect database success!");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
        
        
        
        public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnect());
        } catch (Exception e) {
        }
    }
}
