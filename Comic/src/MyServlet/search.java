package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class search extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public search() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 设置字符编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String search = request.getParameter("search");
		if (search == null && search.equals("")) {
			response.sendRedirect("search.jsp");
		}
		try {
			String url = "jdbc:mysql://localhost:3306/dongman";
			String name = "root";
			String pwd = "123456";
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, name, pwd);
			String sql = "select * from riman where name=?"
					+ "union select * from recommend where name=?"
					+ "union select * from guochuang where name=?"
					+ "union select * from movie where name=?";// 多表不关联查询
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, search);
			pst.setString(2, search);
			pst.setString(3, search);
			pst.setString(4, search);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				request.getSession().setAttribute("image",
						rs.getString("image")); // 向search.jsp内传查询到的数据
				request.getSession().setAttribute("name", rs.getString("name"));
				request.getSession().setAttribute("time", rs.getString("time"));
				request.getSession().setAttribute("drama",
						rs.getString("drama"));
				response.sendRedirect("search.jsp");

			} else {
				out.println("<script language='javascript'>window.location.href='search.jsp';</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
