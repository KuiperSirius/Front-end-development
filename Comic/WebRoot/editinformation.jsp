<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'editinformation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/information.css">

  </head>
  
  <body>
    <%String name = (String) request.getSession().getAttribute("username");%>
	<div id="container">
		<form action="editinformation" method="post"enctype="multipart/form-data">
			<div id="main">
				<div id="Center">
					<p>
						<lable>头像</lable>
						<br> <input type="file" name="myfile"/>
					</p>
					<p>
						<label>用户名(不可修改)</label>
					</p>
					<!--readonly="readonly"只读不可修改，可选中能传值  -->
					<p>
						<input type="text" name="name" class="informationInput" readonly="readonly" value="<%=name%>"/>
					</p>
					<p>
						<label>登录密码</label>
					</p>
					<p>
						<input type="text" name="password" class="informationInput" />
					</p>
					<p>
						<label>邮箱</label>
					</p>
					<p>
						<input type="text" name="email" class="informationInput" />
					</p>
					<p>
						<label>联系方式</label>
					</p>
					<p>
						<input type="text" name="phone" class="informationInput" />
					</p>
					<p>
						<label>个性签名</label>
					</p>
					<p>
						<textarea rows="5" name="text"></textarea>
					</p>
				</div>
				<div id="Buttons">
					<button class="editBtn" onclick="this.form.submit()">保存</button>
					<div>
						<a href="index.jsp">返回首页</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
