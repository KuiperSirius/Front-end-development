<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'execute.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
.div1{
float: left;
height: 41px;

width: 144px;
position:relative;
}
.div2{
text-align:center;
padding-top:12px;
font-size:15px;
font-weight:800
}
.inputstyle{
    width: 144px;
    height: 41px;
    cursor: pointer;
    font-size: 30px;
    outline: medium none;
    position: absolute;
    filter:alpha(opacity=0);
    -moz-opacity:0;
    opacity:0; 
    left:0px;
    top: 0px;
}
</style>
  </head>
  
  <body>
  <table border=1>
     <form>
    <caption>Administrator Execute Page</caption>
    <tr><th>动漫名</th><th>图片</th><th>时间</th><th>剧集</th><th>具体操作</th><th>作者</th></tr>
  <%
   Connection myCon=MyConnection.getConnection();
   String str="select * from recommend";
   Statement state=myCon.createStatement();
   ResultSet res=state.executeQuery(str);
   int i=1;
   /*
   while(res.next()==true){
   out.println("<tr><th>"+res.getString("name")+"</th><th>"+res.getString("image")+"</th><th>"+res.getString("time")+"</th><th>"+res.getString("drama")+"</th><th>"+res.getString("information")+"</th><th>"+res.getString("author")+"</th><th><button onclick=window.location.href='3'>详细信息</button></th></tr>");
   }*/
   %>
   <form name="form1" method="post" action="http://www.divcss5.com"> 

				<%
   while(res.next()==true){
   %>
    <tr>
    <th><input type=text name=BrotherDog value=<%=res.getString("name")%> />
				</th>
				<th><input type=text name=BrotherDog
					value=<%=res.getString("image")%> maxlength="18" size="18"/>
				
				<div class="div1">
     <div class="div2">上传图片</div>
     <input type="file" class="inputstyle">
     </div>
				</th>
				<th><input type=text name=BrotherDog
					value=<%=res.getString("time")%> />
				</th>
				<th><input type=text name=BrotherDog
					value=<%=res.getString("drama")%> />
				</th>
				<th><input type=text name=BrotherDog
					value=<%=res.getString("information")%> />
				</th>
				
				<th><input type=text name=BrotherDog
					value=<%=res.getString("author")%> />
				</th>

				
				</tr>
				<%
				i++;
				} %>
				
				<input type="button" name="Button" value="提交" onClick="submit()"> 
				
			</form>
   
   
   
    
    </table>
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
