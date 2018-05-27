package dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {
		private static final String DRIVER = "com.mysql.jdbc.Driver";
		private static final String URL="jdbc:mysql://localhost:3306/localhost";
		private static final String USER="root";
		private static final String PASSWORD="2016";
		
		private static Connection conn=null;
		
		static {
			try {
				
				Class.forName(DRIVER);//加载驱动
				
				conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		public static Connection getConnection(){
			return conn;
		}

		public static void close(Connection conn2) {
			// TODO Auto-generated method stub
			
		}
	}

