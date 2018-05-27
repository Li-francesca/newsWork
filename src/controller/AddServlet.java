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

public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddServlet() {
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
		News n = new News();
		NewsService nSer = new NewsService();	
		int totalPage;
		PagingNewsService pnSer = new PagingNewsService();	
		
		List<Type> typeresult=new ArrayList<Type>();
		CommonService cSer = new CommonService();		
		
		n.setTitle(request.getParameter("title"));
		n.setContent(request.getParameter("content"));
		n.setType(request.getParameter("type"));
		n.setAdmin(request.getParameter("admin"));
		n.setDate(request.getParameter("date"));
		
		
		nSer.toadd(n);
		totalPage = pnSer.togetTotalPage();
		request.setAttribute("totalPage",totalPage);
		
		if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
			currentPage = request.getParameter("currentPage");//从jsp页面获取当前页
		}
		else{
			 currentPage = "1";
		}
		newsresult = nSer.toquery(currentPage);
		typeresult = cSer.toquery();
		request.setAttribute("typeresult",typeresult);
		request.setAttribute("newsresult",newsresult);
		request.setAttribute("currentPage",currentPage);
		request.getRequestDispatcher("/manage.jsp").forward(request, response);//遍历后得到的管理页面
		
	}

}
