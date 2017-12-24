package MyJavaBean;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	public static Connection getConnection() {
		Connection con = null;
		try {
			String url = "jdbc:mysql://localhost:3306/dongman";
			String name = "root";
			String pwd = "123456";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, name, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;

	}
}
