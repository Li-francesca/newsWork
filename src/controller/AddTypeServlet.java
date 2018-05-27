package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TypeDao;
import entity.News;
import entity.Type;
import service.NewsService;
import service.PagingNewsService;
import service.CommonService;

public class AddTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddTypeServlet() {
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
		
		Type type = new Type();
 		TypeDao typeDao = new  TypeDao();
 		
		/*NewsService nSer = new NewsService();
		*/
		int totalPage;
		PagingNewsService pnSer = new PagingNewsService();	
		
		List<Type> typeresult=new ArrayList<Type>();
		CommonService cSer = new CommonService();		
		
		
		
		type.setType(request.getParameter("type"));//获取type并写入
		
		
		/*typeDao.addType(type);//调用增加栏目方法
*/		
		
		if(typeDao.addType(type)==true){
			
			totalPage = pnSer.togetTotalPage();
			
			request.setAttribute("totalPage",totalPage);
			
			if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").equals("")){			
				currentPage = request.getParameter("currentPage");//从jsp页面获取当前页
			}
			else{
				 currentPage = "1";
			}
			
			/*newsresult = nSer.toquery(currentPage);*/
			typeresult = cSer.toquery();
			
			request.setAttribute("typeresult",typeresult);
		/*	request.setAttribute("newsresult",newsresult);*/
			request.setAttribute("currentPage",currentPage);
			
			
			System.out.println("增加新闻栏目");
			request.getRequestDispatcher("/manage.jsp").forward(request, response);//遍历后得到的管理页面
		}
		else {
			request.getRequestDispatcher("/failure.jsp").forward(request, response);//遍历后得到的管理页面
		}
		
	
		
	}

}
