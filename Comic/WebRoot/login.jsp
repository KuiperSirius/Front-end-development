<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

   <link rel="stylesheet" type="text/css" href="css/login.css"/>
  </head>

<body>
	<div id="container">
        <form action="login" method="post">
            <div id="main">
                <div id="Center">
                    <p><label for="username">用户名：</label></p>
                    <p><input type="text"  name="username" class="loginInput" autofocus="autofocus" required="required" autocomplete="off" placeholder="请输入用户名"  /></p>
                    <!-- required 规定必需在提交之前填写输入字段-->
                    <p><label for="password">密码：</label></p>
                    <p><input type="password"  name="password" class="loginInput" required="required" placeholder="请输入密码"  /></p>
                    <p><a class="forgetLink" href="#">忘记密码?</a></p>
                    <input id="remember" type="checkbox" name="remember" />
                    <label for="remember">记住登录状态</label>
                </div>
                <div id="Buttons">
                    <button class="loginBtn" onclick="this.form.submit()" >登录</button>                   
                    <div> <a href="register.jsp">新用户注册</a></div>                   
                </div>
            </div>
        </form>
    </div>
</body>
</html>