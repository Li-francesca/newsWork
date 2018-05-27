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

public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public QueryServlet() {
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
		List<News> newsresult=new ArrayList<News>();
		NewsService nSer = new NewsService();	
		int totalPage;
		PagingNewsService pnSer = new PagingNewsService();
		List<Type> typeresult=new ArrayList<Type>();
		CommonService cSer = new CommonService();	
		String key = request.getParameter("key");
		if(key==null){
			if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
				currentPage = request.getParameter("currentPage");
			}
			else{
				 currentPage = "1";
			}
			typeresult = cSer.toquery();
			request.setAttribute("typeresult",typeresult);
			newsresult = nSer.toquery(currentPage);
			totalPage = pnSer.togetTotalPage();
			request.setAttribute("totalPage",totalPage);
			request.setAttribute("newsresult",newsresult);
			request.setAttribute("currentPage",currentPage);
			request.getRequestDispatcher("/manage.jsp").forward(request, response);
		}
		else{
			if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
				currentPage = request.getParameter("currentPage");
			}
			else{
				 currentPage = "1";
			}	
			typeresult = cSer.toquery();
			request.setAttribute("typeresult",typeresult);
			System.out.println(key);
			totalPage = pnSer.tokeyTotalPage(key);
			System.out.println("ii:"+totalPage);
			newsresult = nSer.toquery(key,currentPage);
			request.setAttribute("totalPage",totalPage);
			request.setAttribute("key",key);
			request.setAttribute("newsresult",newsresult);
			request.setAttribute("currentPage",currentPage);
			request.getRequestDispatcher("/manage.jsp").forward(request, response);//遍历后得到的管理页面
		}
		
	}

}
