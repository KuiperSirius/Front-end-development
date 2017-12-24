package update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class recommend extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public recommend() {
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

		this.doPost(request, response);
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

		response.setCharacterEncoding("utf-8");//字符编码utf-8
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		SmartUpload su=new SmartUpload();
		su.initialize(this.getServletConfig(),request,response);
		su.setMaxFileSize(1024*1024*10); //上传图大小最大为10M
		su.setAllowedFilesList("jpg,png,gif");//支持格式
		try {
			su.upload();
			String savepath=request.getSession().getServletContext().getRealPath("/")+"images\\user";  //request.getSession().getServletContext().getRealPath("/")取得整个web应用的物理根路径（注意不是jsp项目根路径）
			su.save(savepath);
			String image="images/main/"+su.getFiles().getFile(0).getFileName();
			String time=su.getRequest().getParameter("changeTime");
			String drama=su.getRequest().getParameter("changeDrama");
			String information=su.getRequest().getParameter("changeInformation");
			String author=su.getRequest().getParameter("changeAuthor");
			String name=su.getRequest().getParameter("changeName");
			//String sign=su.getRequest().getParameter("sign");
			String uname="root";
			String pwd="123456";
			String url="jdbc:mysql://localhost:3306/dongman";
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, uname, pwd);	
			
			String sql="update recommend set image=?,time=?,drama=?,information=?,author=? where name=?";
			//"select * from riman where name=? union select * from movie where name=? union select *from recommend where name=? union select *from riman where name=?";
			PreparedStatement pst=connection.prepareStatement(sql);
			pst.setString(1,image);
			pst.setString(2,time);
			pst.setString(3,drama);
			pst.setString(4,information);
			pst.setString(5,author);
			pst.setString(6,name);
			
			int flag=pst.executeUpdate();
		if(flag>0){
				out.println("<script language='javascript'>alert('保存成功');window.location.href='admin/SearchAndEdit.jsp';</script>");
			}else{
				out.println("<script language='javascript'>alert('"+name+"');window.location.href='admin/SearchAndEdit.jsp';</script>");
			}
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
