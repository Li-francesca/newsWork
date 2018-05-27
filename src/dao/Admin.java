package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbutils.DBUtils;

import dbutils.DBUtils;
import entity.Administrator;

public class Admin {
	public Object ischecked(String username) {
		//public static void main(String[] args) throws SQLException, ClassNotFoundException {
				 ResultSet rs=null;
			 	PreparedStatement psmt = null;
			 	Administrator admin = new Administrator();
			 	
				try {
						Connection conn=DBUtils.getConnection();
						//String sql="select * from t_admin ";
						String sql="select * from t_admin where username='"+username+"';";
						 psmt = conn.prepareStatement(sql);//执行
						 rs=psmt.executeQuery();
						 while(rs.next()){
							 admin.setUsername(rs.getString("username"));
							 admin.setPassword(rs.getString("password"));
							 System.out.println(admin.getUsername()+"  "+admin.getPassword());
						 }
				} catch (SQLException e) {
					e.printStackTrace();
			}
				return admin;
	}
}
