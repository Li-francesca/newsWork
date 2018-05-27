package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.News;
import entity.Type;
import service.NewsService;
import service.PagingNewsService;
import service.CommonService;

public class TypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public TypeServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String currentPage ;
//		request.getParameter("currentPage");
//	    System.out.println("currentPage="+currentPage);	
		String type = request.getParameter("type");
		if(type!=null&&!type.equals("")){
			ArrayList<News> newsresult=new ArrayList<News>();					
			NewsService nSer = new NewsService();
			List<Type> typeresult=new ArrayList<Type>();
			CommonService cSer = new CommonService();	
			int totalPage;
			PagingNewsService pnSer = new PagingNewsService();	
			typeresult = cSer.toquery();
			request.setAttribute("typeresult",typeresult);
			totalPage = pnSer.togetTotalPage(type);
			request.setAttribute("totalPage",totalPage);
			
			if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
				currentPage = request.getParameter("currentPage"); 
			}
			else{
				currentPage ="1";
			}
			
			request.setAttribute("currentPage", currentPage);
			newsresult = (ArrayList<News>) nSer.querytype(type,currentPage);
			request.setAttribute("newsresult",newsresult);
			request.setAttribute("type",type);
			request.getRequestDispatcher("/manage.jsp").forward(request, response);//遍历后得到的管理页面
			//接下来写得到分页的代码
		}
		else{
			List<News> newsresult=new ArrayList<News>();					
			NewsService nSer = new NewsService();
			List<Type> typeresult=new ArrayList<Type>();
			CommonService cSer = new CommonService();	
			PagingNewsService pnSer = new PagingNewsService();	
			int totalPage;
			
			typeresult = cSer.toquery();
			request.setAttribute("typeresult",typeresult);
			totalPage = pnSer.togetTotalPage();
			request.setAttribute("totalPage",totalPage);
			if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
				currentPage = request.getParameter("currentPage"); 
			}
			else{
				currentPage ="1";
			}
			request.getParameter("currentPage");
			newsresult = nSer.toquery(currentPage);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("newsresult",newsresult);
			request.getRequestDispatcher("/manage.jsp").forward(request,response);//遍历后得到的管理页面
		}
	}

}
