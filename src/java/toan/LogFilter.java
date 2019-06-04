package toan;

import java.io.IOException;
import java.util.Date;
 
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class LogFilter implements Filter {
 
    public LogFilter() {
    }
 
    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        System.out.println("LogFilter init!");
    }
 
    @Override
    public void destroy() {
        System.out.println("LogFilter destroy!");
    }
 
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        System.out.println(req.getContextPath()+"/filterServlet");
        resp.sendRedirect(req.getContextPath()+"/pages/login.jsp");
        /*
        HttpServletRequest req = (HttpServletRequest) request;
 
        String servletPath = req.getServletPath();
 
        System.out.println("#INFO " + new Date() + " - ServletPath :" + servletPath //
                + ", URL =" + req.getRequestURL());
 
        // Cho phép request được đi tiếp. (Vượt qua Filter này).
        chain.doFilter(request, response);
        */
    }
}
