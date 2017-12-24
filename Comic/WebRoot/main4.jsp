<%@ page language="java" import="java.util.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main4.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
  </head>
  
  <body>
    <div id="container">
		<div id="navi">
				<div class="navi-button"><a href="index.jsp">首页</a></div>
				<div class="navi-button"><a href="main1.jsp">日漫</a></div>
				<div class="navi-button"><a href="main2.jsp">国创</a></div>
				<div class="navi-button"><a href="main3.jsp">电影</a></div>
				<div class="navi-button"><a href="main4.jsp">推荐</a></div>
		</div>
		<div id="main1">
		    <form action="search" method="post">
				<input type="search" id="search" name="search" placeholder="请键入番剧名称" />
				<input type="submit" name="go" class="search-go" value=" " />
			</form>
		</div>
		<div id="main2">
			<%
				int pageSize = 7; //每页显示数
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
					out.print("<td><button onclick=window.location.href='detail.jsp?name="
							+ cartoon.getName() + "'>详细信息</button></td>");
					out.print("</tr>");
				}
				out.print("</table>");
				out.print("当前页" + currentPage + "/总共" + maxPage + "页");
				if (currentPage == 1) {
					out.print("<a href=main4.jsp?page=" + (currentPage + 1)
							+ ">下一页</a>");
					out.print("<a href=main4.jsp?page=" + maxPage + ">尾页</a>");
				} else if (currentPage < maxPage) {
					out.print("<a href='main4.jsp'>首页</a>");
					out.print("<a href='main4.jsp?page=" + (currentPage - 1)
							+ "'>上一页</a>");
					out.print("<a href=main4.jsp?page=" + (currentPage + 1)
							+ ">下一页</a>");
					out.print("<a href=main4.jsp?page=" + maxPage + ">尾页</a>");

				} else {
					out.print("<a href=main4.jsp?page=" + (currentPage - 1)
							+ ">上一页</a>");
					out.print("<a href='main4.jsp'>首页</a>");
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
