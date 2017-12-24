<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/search.css">

  </head>
  
  <body>
	<%
		String image = (String) request.getSession().getAttribute("image");//从search servlet中提取参数
		String name = (String) request.getSession().getAttribute("name");
		String time = (String) request.getSession().getAttribute("time");
		String drama = (String) request.getSession().getAttribute("drama");
	%>
	<div id="container">
		<div id="top">
			<form action="search" method="post">
				<input type="text" name="search" class=" search"
					placeholder="请键入番剧名称" />
				<button class="searchBtn" onclick="this.form.submit()">搜索</button>
			</form>
		</div>
		<div id="main">
			<%
				if (name != null && !name.equals(" ")) {
			%>
			<table border=1 width=960>
				<tr>
					<td>番剧图片</td>
					<td>番剧名称</td>
					<td>放送时间</td>
					<td>剧集</td>
					<td>操作</td>
				</tr>
				<tr>
					<td><img src=<%=image%> /></td>
					<td><%=name%></td>
					<td><%=time%></td>
					<td><%=drama%></td>
					<td><button
							onclick="window.location.href='detail.jsp?name=<%=name%>'">详细信息</button>
					</td>
				</tr>
			</table>
			<%
				}
			%>
		</div>
	</div>
	<!-- 清除本页session -->
    <%
    request.getSession().removeAttribute("image");
    request.getSession().removeAttribute("name");
    request.getSession().removeAttribute("time");
    request.getSession().removeAttribute("drama");
     %>
</body>
</html>
    
  </body>
</html>
