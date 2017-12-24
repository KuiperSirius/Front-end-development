<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
html {
	background-color: #B5DEF2;
}

#main {
	background-color: #F0F4F6;
	/*上divcolor*/
	border: 1px solid #BfD6E1;
	border-radius: 5px;
	color: #444;
	font: 18px 'Microsoft YaHei', '华文楷体';
	margin: 0 auto;
	width: 388px;
}

#main #Center {
	border-bottom: 1px solid #DDE0E8;
	padding: 24px;
}

#main #Center p {
	margin-bottom: 10px
}

#main #Buttons { /*background-color: #F0F4F6;*/
	/*下divcolor*/
	border-top: 0px solid #FFF; //
	上盒子结束后划线 border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
	line-height: 28px;
	overflow: hidden;
	padding: 20px 24px;
	vertical-align: center;
	filter: alpha(Opacity =     80);
	-moz-opacity: 0.5;
	opacity: 0.5;
}

#main .uploadBtn {
	background-image: -moz-linear-gradient(to bottom, blue, #85CFEE);
	border: 1px solid #98CCE7;
	border-radius: 20px;
	box-shadow: inset rgba(255, 255, 255, 0.6) 0 1px 1px, rgba(0, 0, 0, 0.1)
		0 1px 1px;
	color: #444;
	/*下载*/
	cursor: pointer;
	float: right;
	font: bold 13px Arial;
	padding: 10px 50px;
}

#main .uploadBtn:HOVER {
	background-image: -moz-linear-gradient(to top, blue, #85CFEE);
	//
	下载按钮颜色设置
}

#main a.forgetLink {
	color: #ABABAB;
	cursor: pointer;
	float: right;
	font: 11px/20px Arial;
	text-decoration: none;
	vertical-align: middle;
	/*返回首页*/
}

#main a.forgetLink:HOVER {
	color: #000000;
	text-decoration: none;
	/*返回首页*/
}
</style>

</head>

<body>

	<%  
	//数据库连接  
		String url = "jdbc:mysql://localhost:3306/dongman";
		String uname = "root";
		String pwd = "123456";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, pwd);
		String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");	//接受从index.jsp传来的番剧名称，并避免中文乱码		
		String sql = "select * from riman where name=?"
					+ "union select * from recommend where name=?"
					+ "union select * from guochuang where name=?"
					+ "union select * from movie where name=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, name);
		pst.setString(2, name);
		pst.setString(3, name);
		pst.setString(4, name);
		ResultSet rs = pst.executeQuery();
		rs.next();
	%>
	<div id="main">
		<div id="Center">
			<p>
			<div class="img">
				<img src="<%=rs.getString("image")%>" />
			</div>
			<p>
				<label>番剧名称:<%=rs.getString("name")%></label>
			</p>
			<p>
				<label>作者:<%=rs.getString("author")%></label>
			</p>
			</p>

			<p>
				<label>时间:<%=rs.getString("time")%></label>
			</p>
			<p>
				<label>资源剧集:<%=rs.getString("drama")%></label>
			</p>
			<p>
				<label>简介:<%=rs.getString("information")%></label>
			</p>

		</div>
		<div id="Buttons">
			<button class="uploadBtn"
				onclick="window.location.href='upload.jsp' ">下载</button>
			<div>
				<a href="index.jsp">返回首页</a>
			</div>
		</div>
	</div>
</body>
</html>
