package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.News;
import service.CommonService;

public class ContentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ContentServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		News n  = new News();
		CommonService cSer = new CommonService();
		n = cSer.toget(id);//调用方法
		request.setAttribute("id", String.valueOf(n.getId()));
		request.setAttribute("title", n.getTitle());
		request.setAttribute("content", n.getContent());
		request.setAttribute("admin", n.getAdmin());
		request.setAttribute("type", n.getType());
		request.setAttribute("date", n.getDate());
		request.getRequestDispatcher("/updatenews.jsp").forward(request, response);//跳转到更新页面 
	}

}
