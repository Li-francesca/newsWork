package service;

import java.util.ArrayList;
import java.util.List;

import dao.CommonDao;
import entity.News;
import entity.Type;

public class CommonService {
	public News toget(int id){
		News n = new News();
		CommonDao c1Dao = new CommonDao();
		n = c1Dao.get(id);
		return n;
	}
	
	public List<Type> toquery(){
		CommonDao c2Dao = new CommonDao();
		List<Type> typeresult=new ArrayList<Type>();	
		typeresult = c2Dao.query();
		return typeresult;
	}
}
