package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.News;
import service.NewsService;
import service.PagingNewsService;

public class FirstServlet extends HttpServlet {

	
	public FirstServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
		
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request,response);		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String currentPage ;
		List<News> zongheresult=new ArrayList<News>();
		List<News> yuleresult=new ArrayList<News>();
		List<News> junshiresult=new ArrayList<News>();
		List<News> tiyuresult=new ArrayList<News>();
		NewsService nSer = new NewsService();	
		int totalPage;
		PagingNewsService pnSer = new PagingNewsService();
		String typef = "娱乐";
		String types = "军事";
		String typet = "体育";
		if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
			currentPage = request.getParameter("currentPage");//从jsp页面获取当前页
		}
		else{
			 currentPage ="1";
		}	
		zongheresult = nSer.toquery(currentPage);
		yuleresult = nSer.querytype(typef,currentPage);
		junshiresult = nSer.querytype(types,currentPage);
		tiyuresult = nSer.querytype(typet,currentPage);
		totalPage = pnSer.togetTotalPage();
		request.setAttribute("totalPage",totalPage);
		request.setAttribute("zongheresult",zongheresult);
		request.setAttribute("yuleresult",yuleresult);
		request.setAttribute("junshiresult",junshiresult);
		request.setAttribute("tiyuresult",tiyuresult);
		request.setAttribute("currentPage",currentPage);
		request.getRequestDispatcher("/index.jsp").forward(request, response);//遍历后得到的管理页面
		
	}

	public void init() throws ServletException {
	}

}
