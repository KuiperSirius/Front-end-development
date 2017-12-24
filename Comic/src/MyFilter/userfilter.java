package MyFilter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class userfilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request=(HttpServletRequest)req;
	    HttpServletResponse response=(HttpServletResponse)res;
	    HttpSession session=request.getSession(true);
	    response.setCharacterEncoding("utf-8");
	    response.setContentType("text/html");
	    PrintWriter out = response.getWriter();

		String name = (String) session.getAttribute("username");
		if (name == null || " ".equals(name)) {
			out.println("<script language='javascript'>alert('Äã»¹Î´µÇÂ¼');window.location.href='login.jsp';</script>");
		} else {
			chain.doFilter(req, res);
		}

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
