package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutils.DBUtils;

/**
 *分页
 */
public class PagingDao {
private static final int PAGESIZE =10;
	
	public int getTotalPage(){
		Connection conn=DBUtils.getConnection();
		int totalPage = 0;
		int totalrecords = 0;
		String sql = "SELECT COUNT(*)  FROM t_new";
		
			try {
				PreparedStatement ptmt=conn.prepareStatement(sql);
				ResultSet rs=ptmt.executeQuery();
				if(rs.next()){
					totalrecords = rs.getInt(1);
				}
				totalPage = (totalrecords % PAGESIZE == 0 ? totalrecords / PAGESIZE : totalrecords/PAGESIZE + 1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return totalPage;			
	}
	
	public int getTotalPage(String type){
		Connection conn=DBUtils.getConnection();
		int totalPage = 0;
		int totalrecords = 0;
		String sql = "SELECT COUNT(*)  FROM t_new WHERE type = ?";
		
			try {
				PreparedStatement ptmt=conn.prepareStatement(sql);
				ptmt.setString(1, type);
				ResultSet rs=ptmt.executeQuery();
				if(rs.next()){
					totalrecords = rs.getInt(1);
				}
				totalPage = (totalrecords % PAGESIZE == 0 ? totalrecords / PAGESIZE : totalrecords/PAGESIZE + 1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return totalPage;			
	}
	
	public int getkeyTotalPage(String key){
		int totalPage = 0;
		int totalrecords = 0;
		List<String> keyresult=new ArrayList<String>();	
		Connection conn=DBUtils.getConnection();
		String sql = "SELECT * FROM t_new " ;
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			if(rs == null){
				System.out.println("空");
			}
			while(rs.next()){
				for(int i = 2;i<=6;i++){
					if(rs.getString(i).equals(key)){
						for(int j=1;j<=6;j++){
							keyresult.add(rs.getString(j));
							 totalrecords++;
						}					 		
					}
				}			
			}
			  totalrecords = totalrecords/6;
			  totalPage = (totalrecords % PAGESIZE == 0 ? totalrecords / PAGESIZE : totalrecords/PAGESIZE + 1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return totalPage;			
	}
}
