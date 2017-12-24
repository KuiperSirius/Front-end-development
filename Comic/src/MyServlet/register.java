package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public register() {
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
		response.setCharacterEncoding("utf-8"); // �����ַ�����Ϊutf-8���������ݿ��ַ�����
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		// ��ȡregister.jsp�еĲ���
		String username = request.getParameter("username");
		String password_one = request.getParameter("password_one");
		String password_two = request.getParameter("password_two");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		if (username == null || username.equals(" ") || password_one == null
				|| password_one.equals("")) {
			out.println("<script language='javascript'>alert('�û������벻��Ϊ��');window.location.href='register.jsp'</script>");
		}else if (!password_one.equals(password_two)) {
			out.println("<script language='javascript'>alert('����ǰ��ͬ');window.location.href='register.jsp'</script>");
		} else {
			try {
				// �������ݿ�
				String name = "root";
				String pwd = "12345";
				String url = "jdbc:mysql://localhost:3306/dongman";
				String sql;
				Class.forName("com.mysql.jdbc.Driver");
				Connection connection = DriverManager.getConnection(url, name,
						pwd);
				sql = "select * from user where username=?";
				PreparedStatement pst1 = connection.prepareStatement(sql);
				pst1.setString(1, username);
				ResultSet rs = pst1.executeQuery();
				if (rs.next()) {
					out.println("<script language='javascript'>alert('���û��Ѵ��ڣ�������ע��');window.location.href='register.jsp';</script>");
				} else {
					sql = "insert into user(username,password,email,phone) values(?,?,?,?)";
					PreparedStatement pst = connection.prepareStatement(sql);
					pst.setString(1, username);
					pst.setString(2, password_two);
					pst.setString(3, email);
					pst.setString(4, phone);
					int flag = pst.executeUpdate();
					if (flag > 0) {
						out.println("<script language='javascript'>alert('ע��ɹ������ص�¼����');window.location.href='login.jsp';</script>");
					}
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
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
