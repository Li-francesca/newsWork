package www.tarena.com;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DateTag extends SimpleTagSupport{

	@Override
	public void doTag() throws JspException, IOException {
		Date date = new Date();
		SimpleDateFormat sdf = 
			new SimpleDateFormat("yyyy-MM-dd");
		String dateStr = 
			sdf.format(date);
		PageContext ctx = 
			(PageContext)getJspContext();
		JspWriter out = ctx.getOut();
		out.println(dateStr);
	}
	
}
