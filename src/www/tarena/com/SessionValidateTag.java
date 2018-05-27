package www.tarena.com;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SessionValidateTag extends SimpleTagSupport{

	@Override
	public void doTag() throws JspException, IOException {
		PageContext ctx = 
			(PageContext)getJspContext();
		HttpSession session = 
			ctx.getSession();
		HttpServletResponse response = 
			(HttpServletResponse) ctx.getResponse();
		Object obj = session.getAttribute("user");
		if(obj == null){
			response.sendRedirect("login1.jsp");
			throw new SkipPageException();
		}
	}
	
}
