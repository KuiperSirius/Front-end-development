package MyServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class editinformation extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public editinformation() {
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
        //�����ַ�����
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        //����smartupload����
		SmartUpload su=new SmartUpload();
		//��ʼ��
		su.initialize(this.getServletConfig(), request, response);
		//���ô�С
		su.setMaxFileSize(1024*1024*10);
		//֧�ָ�ʽ
		su.setAllowedFilesList("jpg,png,gif,jpeg");
		try {
			su.upload();
			String savepath = request.getSession().getServletContext().getRealPath("/")+"images\\user";//request.getSession().getServletContext().getRealPath("/")ȡ������webӦ�õ������·����ע�ⲻ��jsp��Ŀ��·����
			su.save(savepath);
			String image = "images/user/"+su.getFiles().getFile(0).getFileName();// ȡ���ļ���
			String name = su.getRequest().getParameter("name");
			String password = su.getRequest().getParameter("password");
			String email = su.getRequest().getParameter("email");
			String phone = su.getRequest().getParameter("phone");
			String sign = su.getRequest().getParameter("sign");
			if ( password == null|| password.equals("")) {
				out.println("<script language='javascript'>alert('���벻��Ϊ��');window.location.href='editinformation.jsp'</script>");
			} else {
				String uname = "root";
				String pwd = "123456";
				String url = "jdbc:mysql://localhost:3306/dongman";
				Class.forName("com.mysql.jdbc.Driver");
				Connection connection = DriverManager.getConnection(url, uname,
						pwd);
				String sql = "update user set password=?,email=?,phone=?,sign=?,image=? where username=?";
				PreparedStatement pst = connection.prepareStatement(sql);
				pst.setString(1, password);
				pst.setString(2, email);
				pst.setString(3, phone);
				pst.setString(4, sign);
				pst.setString(5, image);
				pst.setString(6, name);
                int flag=pst.executeUpdate();
                if(flag>0){
                	out.println("<script language='javascript'>alert('����ɹ�');window.location.href='information.jsp'</script>");
                }
			}
		}catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
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
