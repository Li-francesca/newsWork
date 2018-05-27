package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutils.DBUtils;
import entity.News;
import entity.Type;

public class CommonDao {
	public News get(int id) {
		News n=new News();
		Connection conn=DBUtils.getConnection();
		String sql=" SELECT * FROM t_new where id = ?" ;				
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);					
			ptmt.setInt(1, id);
			ResultSet rs=ptmt.executeQuery();			
			while(rs.next()){
				n.setTitle(rs.getString("title"));				
				n.setContent(rs.getString("content"));	
				n.setType(rs.getString("type"));
				n.setAdmin(rs.getString("admin"));	
				n.setDate(rs.getString("date"));
				n.setId(rs.getInt("id"));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	//类型
	public List<Type> query(){
		List<Type> typeresult=new ArrayList<Type>();		
		Connection conn=DBUtils.getConnection();
		String sql = "SELECT * FROM type ";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()){
				Type t=new Type();
				t.setType(rs.getString("type"));
				t.setId(rs.getInt("id"));
				typeresult.add(t);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return typeresult;
	}
}