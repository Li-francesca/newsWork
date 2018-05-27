package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutils.DBUtils;

import dbutils.DBUtils;
import entity.Type;

public class TypeDao {

	
	public boolean  addType(Type type) {
		//添加新闻
		boolean judge=false;
				Connection conn=DBUtils.getConnection();//创建数据库的连接   
				/*String sql="INSERT INTO type(type) VALUES(?) ";*/
				String sql="INSERT INTO type(type) VALUES(?) ";
				try {
					PreparedStatement ptmt=conn.prepareStatement(sql);	//创建一个PreparedStatement对象，执行动态SQL语句   		
					
					ptmt.setString(1, type.getType());
					
					ptmt.execute();		//执行SQL语句   	
					judge=true;
					System.out.println("插入新闻类型");
				} catch (SQLException e){
					e.printStackTrace();
				}
				return	judge;
			}
	
	public boolean delType(int id) {
		boolean judge=false;
		Connection conn=DBUtils.getConnection();//创建数据库的连接   
		String sql=" DELETE FROM type WHERE id = ? ";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);	//创建一个PreparedStatement对象，执行动态SQL语句   			
			ptmt.setInt(1, id);
			ptmt.execute();//执行SQL语句   	
			judge=true;
			System.out.println("删除新闻类型");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return judge;
	}
}
