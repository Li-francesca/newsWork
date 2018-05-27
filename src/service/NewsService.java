package service;

import java.util.ArrayList;
import java.util.List;

import dao.NewsDao;
import entity.News;

public class NewsService {

	public void toadd(News n) {//增加新闻
		NewsDao dao=new NewsDao();	
		dao.addNews(n);
	}
	
	public void todel(int id) {//删除新闻
		NewsDao dao=new NewsDao();	
		dao.delNews(id);
	}
	
	public void toupdate(News n) {//更新新闻
		NewsDao dao=new NewsDao();	
		dao.updateNews(n);
	}
	
	public List<News> toquery(String currentPage) {	//查询
		NewsDao dao=new NewsDao();
		List<News> newsresult=new ArrayList<News>();
		newsresult = dao.query(currentPage);
		return newsresult;
	}
	
	public List<News> toquery(String key,String currentPage) {//关键字查询
		NewsDao dao=new NewsDao();	
		List<News> newsresult=new ArrayList<News>();
		newsresult = dao.query(key, currentPage);
		return newsresult;
	}
	
	public List<News> querytype(String type ,String currentPage){//类型查询
		List<News> newsresult=new ArrayList<News>();
		NewsDao dao=new NewsDao();	
		newsresult = dao.querytype(type,currentPage);
		return newsresult;
	}
}
