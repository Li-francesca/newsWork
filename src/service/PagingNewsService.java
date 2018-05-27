package service;

import dao.PagingDao;

public class PagingNewsService {
	public int togetTotalPage(){
		PagingDao pDao = new PagingDao();
		int totalPage = pDao.getTotalPage();
		return totalPage;
	}
	
	public int togetTotalPage(String type){
		PagingDao pDao = new PagingDao();
		int totalPage = pDao.getTotalPage(type);
		return totalPage;
	}
	
	public int tokeyTotalPage(String key){
		PagingDao pDao = new PagingDao();
		int totalPage = pDao.getkeyTotalPage(key);
		return totalPage;
	}

}
