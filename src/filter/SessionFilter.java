package filter;
import java.io.IOException;
import javax.servlet.*;
public class SessionFilter implements Filter{
    @Override
    public void destroy() {
    }
    /**
     * 核心过滤方法
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        System.out.println("SessionFilter.doFilter");//用于测试
        chain.doFilter(request, response);
    }
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }
}