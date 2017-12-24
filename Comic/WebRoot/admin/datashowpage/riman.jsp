<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'riman.jsp' starting page</title>
    
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
    
   <tr><th>动漫名</th><th>图片</th><th>时间</th><th>剧集</th><th>介绍信息</th><th>作者</th> <td colspan="2" align="center">数据操作</td></tr>
  <%
   Connection myCon=MyConnection.getConnection();
   String str="select * from riman";
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
    <label><%=res.getString("name")%></label>
   
				</th>
				<th>				
					<img border="0" src=<%=res.getString("image")%> width="80" height="81" alter="图片未插入">
	
				</th>
				<th>
				  <label><%=res.getString("time")%></label>				
				</th>
				<th>
				 <label><%=res.getString("drama")%></label>								
				</th>
				<th>
				 <label><%=res.getString("information")%></label>				
				</th>
				
				<th>
					<label><%=res.getString("author")%></label>
				</th>

				<td><a href="admin/delete/delete_riman.jsp?id=<%=res.getString("name")%>">删除操作</a></td><td><a href="admin/update/update_riman.jsp?id=<%=res.getString("name")%>">更新操作</a></td></tr>
				<%
				
				} %>
						 <tr><th colspan="8">
              <a href="admin/input/input_riman.jsp" >插入</a>
   	        </tr>		
			</form>
   
   
   
    
    </table>
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
