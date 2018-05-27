package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.News;
import entity.Type;
import service.CommonService;
import service.NewsService;
import service.PagingNewsService;

public class MianServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
		totalPage = pnSer.togetTotalPage();
		request.setAttribute("totalPage",totalPage);
		
		if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
			currentPage = request.getParameter("currentPage");//从jsp页面获取当前页
		}
		else{
			 currentPage = "1";
		}
		typeresult = cSer.toquery();
		request.setAttribute("typeresult",typeresult);
		newsresult = nSer.toquery(currentPage);
		request.setAttribute("newsresult",newsresult);
		request.setAttribute("currentPage",currentPage);
		HttpSession session = request. getSession();
		request.getRequestDispatcher("/main.jsp").forward(request, response);//遍历后得到的管理页面
		//response.sendRedirect("/manage.jsp");
	
	} 
		
	}


