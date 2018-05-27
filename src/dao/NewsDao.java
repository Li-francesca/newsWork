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

public class NewsDao {

private static final int PAGESIZE = 10;	
	public void addNews(News n) {
//添加新闻
		Connection conn=DBUtils.getConnection();//创建数据库的连接   
		String sql="INSERT INTO t_new(title,content,type,admin,date) VALUES(?,?,?,?,?) ";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);	//创建一个PreparedStatement对象，执行动态SQL语句   		
			ptmt.setString(1, n.getTitle());
			ptmt.setString(2, n.getContent());	
			ptmt.setString(4, n.getType());
			ptmt.setString(3, n.getAdmin());
			ptmt.setString(5, n.getDate());
			ptmt.execute();		//执行SQL语句   	
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	//由ID删除新闻
	public void delNews(int id) {
		Connection conn=DBUtils.getConnection();//创建数据库的连接   
		String sql=" DELETE FROM t_new WHERE id = ? ";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);	//创建一个PreparedStatement对象，执行动态SQL语句   			
			ptmt.setInt(1, id);
			ptmt.execute();//执行SQL语句   	
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//更新新闻
	public void updateNews(News n) {
		Connection conn=DBUtils.getConnection();//创建数据库的连接   
		String sql="UPDATE t_new SET title =?,content=?,type=?,admin=?,date=? WHERE id=?";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);		//创建一个PreparedStatement对象，执行动态SQL语句   			
			ptmt.setString(1, n.getTitle());
			ptmt.setString(2, n.getContent());
			ptmt.setString(3, n.getType());
			ptmt.setString(4, n.getAdmin());
			
			ptmt.setString(5, n.getDate());
			ptmt.setInt(6, n.getId());			
			ptmt.execute();//执行SQL语句   	
			
			System.out.println(n.getTitle());
			System.out.println(n.getContent());
			System.out.println(n.getAdmin());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

	public List<News> query(String currentPage1){
		int currentPage =Integer.parseInt(currentPage1.trim());
//		BigInteger a = new BigInteger(currentPage1);
//		System.out.println("a is="+a);
//		int currentPage =a.intValue();
	
		List<News> newsresult=new ArrayList<News>();		
		Connection conn=DBUtils.getConnection();//创建数据库的连接   
		String sql = "SELECT * FROM t_new LIMIT ?,?";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);//创建一个PreparedStatement对象，执行动态SQL语句   			
			ptmt.setInt(1, (currentPage-1)*PAGESIZE);
			ptmt.setInt(2,PAGESIZE);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()){
				News n=new News();
				n.setId(rs.getInt("id"));
				n.setTitle(rs.getString("title"));
				n.setType(rs.getString("type"));
				n.setAdmin(rs.getString("admin"));
				n.setDate(rs.getString("date"));
				newsresult.add(n);	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newsresult;
	}
	

	public List<News> query(String key,String currentPage1){
		System.out.println(currentPage1);
//		int currentPage = Integer.valueOf(currentPage1.trim());
			ArrayList<String> keyresult=new ArrayList<String>();	
		List<News> newsresult=new ArrayList<News>();	
		Connection conn=DBUtils.getConnection();//创建数据库的连接   
		String sql = "SELECT * FROM t_new " ;
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);//创建一个PreparedStatement对象，执行动态SQL语句   			
			/*ptmt.setInt(1, (currentPage-1)*PAGESIZE);
			ptmt.setInt(2,PAGESIZE);*/
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()){
				for(int i = 2;i<=6;i++){
					if(rs.getString(i).equals(key)){
						for(int j=1;j<=6;j++){
							keyresult.add(rs.getString(j));							
						}
					}
					
				}				
			}
			int num = keyresult.size()/6;
			for(int p = 1;p<=num;p++){
					News n=new News();
					n.setId(Integer.parseInt(keyresult.get((p-1)*6).trim()));
					n.setTitle(keyresult.get((p-1)*6+1));
					n.setContent(keyresult.get((p-1)*6+2));
					n.setType(keyresult.get((p-1)*6+3));
					n.setAdmin(keyresult.get((p-1)*6+4));					
					n.setDate(keyresult.get((p-1)*6+5));
					
					newsresult.add(n);
				}
		
			return newsresult;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newsresult;
	}
//	类型查询
	public List<News> querytype(String type,String currentPage1){
		int currentPage = Integer.valueOf(currentPage1.trim());
		List<News> newsresult=new ArrayList<News>();		
		Connection conn=DBUtils.getConnection();//创建数据库的连接   
		String sql = "SELECT * FROM t_new WHERE type = ? LIMIT ?,?" ;
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);//创建一个PreparedStatement对象，执行动态SQL语句   			
			ptmt.setString(1, type);
			ptmt.setInt(2, (currentPage-1)*PAGESIZE);
			ptmt.setInt(3,PAGESIZE);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()){
				News n=new News();
				n.setId(rs.getInt("id"));	
				n.setTitle(rs.getString("title"));
				n.setType(rs.getString("type"));
				n.setAdmin(rs.getString("admin"));
				n.setDate(rs.getString("date"));
				newsresult.add(n);					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newsresult;
	}

}

