<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SearchAndEdit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#container {
	width: 1300px;
	height: 1020px;
	margin: 0 auto;
	color: white;
}

body {
	background: url(admin/images/back.jpg) no-repeat center center scroll;
	opacity: 0.9;
	background-attachment: fixed;
}

#top {
	width: 1300px;
	height: 80px;
	margin: 0 auto;
}

#logo {
	width: 400px;
	height: 80px;
	float: left;
	font-size: 20px;
}

#search {
	width: 890px;
	height: 80px;
	float: right;
	font-size: 20px;
}

#search select {
	height: 50px;
	width: 90px;
	font-size: 20px;
}

#text {
	height: 50px;
	width: 300px;
	font-size: 20px;
}

#search-btn {
	width: 45px;
	height: 45px;
	background-image: url(admin/images/btn0.jpg);
	border: solid;
	background-position: 0px 0px;
	border-radius: 35px;
}

#search-btn:hover {
	background-image: url(admin/images/btn1.jpg);
}

#main {
	width: 1300px;
	height: 800px;
	margin: 0 auto;
}

#left {
	width: 200px;
	height: 750px;
	font-size: 20px;
	float: left;
}

#left a {
	text-decoration: none;
	color: #90EE90;
}

#left a:hover {
	color: #008B45;
	text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #fff, 0 0 40px
		#ff00de, 0 0 70px #ff00de;
}

#center {
	width: 1000px;
	height: 750px;
	float: right;
	font-size: 20px;
	padding-left: 1px;
}

#foot {
	width: 100%;
	height: auto;
	padding: 30px;
	font-size: 20px;
}

.iframe {
	width: 1000px;
	height: 750px;
}
</style>
</head>
<body>
	<div id="container">

		<center>
			<font size="2" color="white">
				<h1>Administrator Edit Page</h1> 登录系统时间:</font>
			<%
				out.println(new Date().toLocaleString());
			%>
			<hr />
		</center>

		<div id="top">
			<div id="logo">
				<img border="0" src="admin/images/tw.png" width="80" height="81">
				<img border="0" src="admin/images/fb.png" width="80" height="81">
				<img border="0" src="admin/images/g+.png" width="80" height="81">
			</div>
			<div id="search">
				<!--
	查询表单框
	-->
				<form method="POST" action="admin/search.jsp">
					<p>

						<font size="5" color="white">选择分类:</font> <select name="">
							<option value="guochuang">国创</option>
							<option value="movie">电影</option>
							<option value="recommend">推荐</option>
							<option value="riman">日漫</option>
						</select> <input type="text" name="searchletter" id="text"
							placeholder="请准确输入你要查找的动漫名" /> <input type="submit"
							id="search-btn" value=" " />
					</p>
				</form>
			</div>
		</div>


		<!--
	main主盒子
	-->
		<div id="main">
			<div id="left">
				<font size="5" color="white"> <a
					href="admin/editPassword.jsp">管理员密码管理</a><br /> <br /> <a
					href="admin/datashowpage/guochuang.jsp" target="in">国创</a><br /> <br />
					<a href="admin/datashowpage/movie.jsp" target="in">电影</a><br /> <br />
					<a href="admin/datashowpage/recommend.jsp" target="in">推荐</a><br />
					<br /> <a href="admin/datashowpage/riman.jsp" target="in">日漫</a><br />
					<br />
					<hr> <br /> <a href="index.jsp">回到用户首页</a><br /> <br /> <a
					href="admin/datashowpage/guochuang.jsp">国创信息查询</a><br /> <br /> <a
					href="admin/datashowpage/movie.jsp">电影信息查询</a><br /> <br /> <a
					href="admin/datashowpage/recommend.jsp">推荐信息查询</a><br /> <br /> <a
					href="admin/datashowpage/riman.jsp">日漫信息查询</a><br /> <br /> <a
					href="admin/datashowpage/user.jsp">用户信息查询</a><br /> <br /> </font>
			</div>
			<div id="center">
				<font size="4" color="white"> </font>
				<iframe src="index.jsp" class="iframe" name="in"> </iframe>
			</div>

		</div>
	</div>
</body>
</html>
