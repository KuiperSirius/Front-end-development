<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
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
background-color:#AEEEEE;
}
table {
 border-spacing: 0;
			}
.border0{
border: solid #ccc 1px; 
border-radius: 6px; 
box-shadow: 0 1px 1px #ccc;  

}
.border0 tr:hover { 
background:#0000CD;	
}

.border0 a{
	text-decoration:none;
	color:black;	
	}
.border0 a:hover{
	color:#008B45;

	}
</style>
  </head>
  
  <table class="border0">
     <form>
    
     <tr><th>姓名</th><th>密码</th><th>邮件</th><th>剧集</th><th>电话</th><th>签名</th><th>图片</th> <td colspan="2" align="center">数据操作</td></tr>
  <%
   Connection myCon=MyConnection.getConnection();
   String str="select * from user";
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
    <th>
    <label><%=res.getString("username")%></label>
   
				</th>
				
				<th>
				  <label><%=res.getString("password")%></label>				
				</th>
				<th>
				 <label><%=res.getString("email")%></label>								
				</th>
				<th>
				 <label><%=res.getString("phone")%></label>				
				</th>
				
				<th>
					<label><%=res.getString("sign")%></label>
				</th>
<th>
					<label><%=res.getString("image")%></label>
				</th>
				<td><a href="admin/delete/delete_user.jsp?id=<%=res.getString("username")%>">删除操作</a></td><td><a href="admin/update/update_user.jsp?id=<%=res.getString("username")%>">更新操作</a></td></tr>
				<%
				i++;
				} %>
							
			</form>
   
   
   
    
    </table>
</html>
