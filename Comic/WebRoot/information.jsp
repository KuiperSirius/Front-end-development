<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'information.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/information.css">

  </head>

<body>
	<%
		String name = (String) request.getSession()
				.getAttribute("username");
		if (name == null) {
	%>
	你还未登录，
	<a href="index.jsp">点击跳转为首页</a>
	<%
		} else {
			String url = "jdbc:mysql://localhost:3306/dongman";
			String uname = "root";
			String pwd = "123456";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pwd);
			String sql = "select * from user where username=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, name);
			ResultSet rs = pst.executeQuery();
			rs.next();
	%>
	<div id="container">
		<div id="main">
			<div id="Center">
				<p>
					<lable>头像</lable>
					<br>
				<div class="img">
					<img src="<%=rs.getString("image")%>" />
				</div>
				</p>
				<p>
					<label>用户名</label>
				</p>
				<!--disabled="disabled"可读不可修改无法选中  -->
				<p>
					<input type="text" name="name" class="informationInput"
						value="<%=rs.getString("username")%>" disabled="disabled" />
				</p>
				<p>
					<label>登录密码</label>
				</p>
				<p>
					<input type="text" name="password" class="informationInput"
						value="<%=rs.getString("password")%>" disabled="disabled" />
				</p>
				<p>
					<label>邮箱</label>
				</p>
				<p>
					<input type="text" name="email" class="informationInput"
						value="<%=rs.getString("email")%>" disabled="disabled" />
				</p>
				<p>
					<label>联系方式</label>
				</p>
				<p>
					<input type="text" name="phone" class="informationInput"
						value="<%=rs.getString("phone")%>" disabled="disabled" />
				</p>
				<p>
					<label>个性签名</label>
				</p>
				<p>
					<textarea rows="5" name="text" disabled="disabled"><%=rs.getString("sign")%></textarea>
				</p>
			</div>
			<div id="Buttons">
				<button class="editBtn"
					onclick="window.location.href='editinformation.jsp' ">编辑</button>
				<div>
					<a href="index.jsp">返回首页</a>
				</div>
			</div>
		</div>

	</div>
	<%
		}
	%>
</body>
</html>
