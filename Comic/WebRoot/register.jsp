<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="css/register.css"/>
  </head>
  
  <body>
       <div>
       <form action="register"method="post">
        <div id="main">
                <div id="Center">
                    <p><label>用户名：</label></p>
                    <input type="text"  name="username" class="loginInput" autofocus="autofocus" required="required" autocomplete="off" placeholder="eg.qaz123"  /></p>   <!--required="required"该表单不能为空  -->
                    <p><label>邮箱：</label></p>
                    <p><input type="text"  name="email" class="loginInput" autofocus="autofocus"  autocomplete="off" placeholder="eg.mysupermail@mail.com"  /></p>                
                    <p><label>密码：</label></p>
                    <p><input type="password"  name="password_one" class="loginInput"  placeholder="eg. X8df!90EO"  /></p>
                    <p><label>确认密码：</label></p>
                    <p><input type="password" name="password_two" class="loginInput" /></p>
                    <p><label>联系方式：</label></p>
                    <p><input type="text" name="phone" class="loginInput"  placeholder="eg:1370345"  /></p>
                </div>
                <div id="Buttons">
                    <button class="loginBtn" onclick="this.form.submit()" >注册</button>                   
                    <div> <a href=login.jsp>返回登录界面</a></div>                   
                </div>
            </div>
   </form>
   </div>
  </body>
</html>
