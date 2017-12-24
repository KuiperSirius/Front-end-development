<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'editPassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body{
background-color:#7FFFD4;
}
#container{
width:500px;
height:925px;
margin:0 auto;
text-align:center;
border:solid;
border-color:#7CFC00;
border-bottom-right-radius:250px 100px;
border-bottom-left-radius:250px 20px;
border-top-left-radius:250px 100px;
border-top-right-radius:250px 20px;
}
#container:hover{
border-style:groove;
border-width:12px;
border-color:blue;
border-radius:25px;
}
.combo{
margin:0 auto;
height:66px;
width:490px;

}
.font{
float:left;
height:66px;
width:90px;
padding-top:66px;
font-family:黑体;
font-size:21px;

}
.input-text{
float:right;
height:66px;
width:400px;
padding-top:66px;
}
.input-text-shadow{
width:250px;
height:25px;
}
.input-text-shadow:hover{
border:solid;
border-width:1px;
border-color:#66CDAA;
box-shadow:0px 0px 12px 2px green;
}
.submit-btn{
width:100px;
height:60px;
background-color:#54FF9F;
color:black;
border:solid;
border-color:blue;
border-radius:18px;
font-size:30px;
text-shadow:0 0 6px #F96, -1px -1px #FFF, 1px -1px #444;
}
.submit-btn:hover{

background-color:#0000EE;
color:white;
border:none;
border-radius:18px;
text-shadow:0 0 5px #F96, -2px -2px #FFF, 2px -2px #444;
}
</style>
  </head>
  
  <body>
  
  

<div id="container">
 <form action="insertMovie" method="post"  enctype="multipart/form-data">

<div class="combo">
<div class="font">动漫名</div><div class="input-text"><input type="text" name="name" class="input-text-shadow"></div>
</div>
<div class="combo">
<div class="font">图片</div><div class="input-text"><input type="file" name="image" class="input-text-shadow" /></div>
</div>
<div class="combo">
<div class="font">时间</div><div class="input-text"><input type="text" name="time" class="input-text-shadow"></div>
</div>
<div class="combo">
<div class="font">剧集</div><div class="input-text"><input type="text" name="drama" class="input-text-shadow"></div>
</div>
<div class="combo">
<div class="font">介绍信息</div><div class="input-text"><input type="text" name="information" class="input-text-shadow"></div>
</div>
<div class="combo">
<div class="font">作者</div><div class="input-text"><input type="text" name="author" class="input-text-shadow"></div>
</div>
<input type="submit" value="提交" name="B1" class="submit-btn" >
<input type="reset" value="取消" name="B2" class="submit-btn">
</form>
</div>
  </body>
</html>