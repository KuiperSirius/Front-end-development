<%@ page language="java" import="java.util.*,MyJavaBean.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/pptBox.js"></script>
</head>
<body>
	<div id="container">
		<div id="top">
			<section> 动 漫</section>
			<form action="search" method="post">
				<input type="search" name="search" placeholder="请键入番剧名称" />
				<input type="submit" value="Go" />
			</form>
		</div>
		<div id="main">
			<div id="main1">
				<div id="left">
					<div id="up">
						<ul>
							<li><a href="index.jsp">首页</a>
							</li>
							<li><a href="main1.jsp">日漫</a>
							</li>
							<li><a href="main1.jsp">国创</a>
							</li>
							<li><a href="main1.jsp">电影</a>
							</li>
							<li><a href="main1.jsp">推荐</a>
							</li>
						</ul>
					</div>
					<div id="down">
						<%
							String name=(String)request.getSession().getAttribute("username");  //从loginServelt中获取用户名
						    if(name==null){
						%>
						<br> 登录查看更多功能!<br>
						<button class="loginBtn"
							onclick="window.location.href='login.jsp'">登录</button>
						<%
							}else{
						%>
						欢迎
						<br>
						<%=name%>!
						<button class="loginBtn"
							onclick="window.location.href='information.jsp'">个人信息</button>
						<%
							}
						%>
					</div>
				</div>
				<div id="right">
				<!-- 循环图片 -->
					<script>
						var box = new PPTBox();
						box.width = 800;
						box.height = 450;
						box.autoplayer = 3;
						box
								.add({
									"url" : "images/index/970ae5b0942e439cd3bed9992333893a.jpg",
									"href" : "",
									"title" : "悬浮提示标题1"
								})
						box
								.add({
									"url" : "images/index/0a7387b0ab6a1cd5ab8ad556067011fe.jpg",
									"href" : "",
									"title" : "悬浮提示标题2"
								})
						box
								.add({
									"url" : "images/index/45cafa5d4df432f18d6c2c943099b9d0.jpg",
									"href" : "",
									"title" : "悬浮提示标题3"
								})
						box
								.add({
									"url" : "images/index/ed337e77e04604ed98c99f1c1fed35e1.jpg",
									"href" : "",
									"title" : "悬浮提示标题4"
								})
						box.show();
					</script>
				</div>
			</div>
			<div id="main2">	
				<font color="red" size="5px">热搜榜</font>
				<%
					int pageSize = 4; //每页显示数
					int currentPage; //当前页
					int maxPage; //总页数
					int totalRow = 0; //表中总记录数
					if (request.getParameter("page") == null) {
						currentPage = 1;
					} else {
						currentPage = Integer.parseInt(request.getParameter("page"));
					}
					Recommend re = new Recommend();
					List<Cartoon> cartoons = re.getcartoon(pageSize, currentPage);
					maxPage = re.getmaxPage(totalRow, pageSize);
					out.print("<table border=1 width=960>");
					out.print("<tr><td>番剧图片</td><td>番剧名称</td><td>放送时间</td><td>剧集</td><td>操作</td></tr>");
					for (Cartoon cartoon : cartoons) {
						out.print("<tr>");
						out.print("<td><img src=" + cartoon.getImage() + "></img></td>");
						out.print("<td>" + cartoon.getName() + "</td>");
						out.print("<td>" + cartoon.getTime() + "</td>");
						out.print("<td>" + cartoon.getDrama() + "</td>");
						out.print("<td><button onclick=window.location.href='detail.jsp?name="+cartoon.getName()+"'>详细信息</button></td>");
						out.print("</tr>");
					}
					out.print("</table>");
					out.print("当前页" + currentPage + "/总共" + maxPage + "页");
					if (currentPage == 1) {
						out.print("<a href=index.jsp?page=" + (currentPage + 1)
								+ ">下一页</a>");
						out.print("<a href=index.jsp?page=" + maxPage
								+ ">尾页</a>");
					}
					else if (currentPage < maxPage) {
					    out.print("<a href='#main2'>首页</a>");
						out.print("<a href='index.jsp?page=" + (currentPage - 1)
								+ "'>上一页</a>");
						out.print("<a href=index.jsp?page=" + (currentPage + 1)
								+ ">下一页</a>");
						out.print("<a href=index.jsp?page=" + maxPage
								+ ">尾页</a>");
					    
					} else {
						out.print("<a href=index.jsp?page=" + (currentPage - 1)
								+ ">上一页</a>");
						out.print("<a href='index.jsp#main2'>首页</a>");
					}
				%>
			</div>
			<div id="foot">
				<span><a href="#">关于我们</a> </span> <span><a href="#">人才招聘</a>
				</span> <span><a href="#">联系我们</a> </span> <span><a href="#">友情链接
				</a> </span> <span><a href="#">版权说明</a> </span> <span><a href="#">客服中心</a>
				</span>
			</div>
		</div>
</body>
</html>
