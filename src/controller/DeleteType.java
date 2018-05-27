package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TypeDao;
import entity.News;
import entity.Type;
import service.CommonService;
import service.NewsService;
import service.PagingNewsService;

public class DeleteType extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/*String currentPage ;*/
		
		List<News> newsresult=new ArrayList<News>();
		
		TypeDao typeDao = new TypeDao();//“类型”  对象
		
		NewsService nSer = new NewsService();//对象 
		
		/*int totalPage;*/
		
		PagingNewsService pnSer = new PagingNewsService();	
		CommonService cSer = new CommonService();	
		
		List<Type> typeresult=new ArrayList<Type>();
		
		int id = Integer.parseInt(request.getParameter("id"));//获得Id
		System.out.println("id  shi"+id);
		/*typeDao.delType(id);//执行删除方法
*/		
		if(typeDao.delType(id)==true)
		{
			
			/*totalPage = pnSer.togetTotalPage();*/
			/*request.setAttribute("totalPage",totalPage);	*/	
			/*if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
				currentPage = request.getParameter("currentPage");//从jsp页面获取当前页
			}
			else{
				 currentPage = "1";
			}	
			newsresult = nSer.toquery(currentPage);//调用NewsDao中的查询方法
	*/		typeresult = cSer.toquery();//调用CommonDao中的查询方法
			request.setAttribute("typeresult",typeresult);
			/*request.setAttribute("newsresult",newsresult);
			request.setAttribute("currentPage",currentPage);*/
			System.out.println("gggggggggggggggggggggggggggggg");
			request.getRequestDispatcher("/manage.jsp").forward(request, response);//遍历后得到的管理页面
		}
		else {
			request.getRequestDispatcher("/failure.jsp").forward(request, response);//遍历后得到的管理页面
		}
		
		
		
	}

	
	
	}


