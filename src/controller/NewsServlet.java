package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

import dao.Admin;
import entity.Administrator;
import entity.News;
import entity.Type;
import service.NewsService;
import service.PagingNewsService;
import service.CommonService;

@WebServlet("/NewsServlet")
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
  
    public NewsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
//		获取用户名和密码
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
//		新建对象 调用方法
		Administrator administrator = new Administrator();
		Admin admin = new Admin();
		 administrator = (Administrator) admin.ischecked(username);
//		 比较账号及密码是否正确
		if(administrator.getUsername().equals(username)&&administrator.getPassword().equals(password)){
			System.out.println("success");
			
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
			session.setAttribute("username", username);
			request.getRequestDispatcher("/manage.jsp").forward(request, response);//遍历后得到的管理页面
			//response.sendRedirect("/manage.jsp");
		
		} 
		else
		{
			System.out.println("failure");
			request.getRequestDispatcher("/login.jsp").forward(request, response);//此处显示登录失败界面
			
		}
	}
}


