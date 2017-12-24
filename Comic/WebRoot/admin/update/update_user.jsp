<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update_user.jsp' starting page</title>
    
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


.border0 a{
	text-decoration:none;
	color:black;	
	}
.border0 a:hover{
	color:#008B45;
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
</style>
  </head>
  
  <body>
 <form action="user" method="post"  enctype="multipart/form-data">
    <table class="border0">
    <tr><th>用户名</th><th>密码</th><th>电子邮件</th><th>电话</th><th>签名</th><th>图像</th></tr>
   <%
  //request.setCharacterEncoding("UTF-8");
   String idName=new String(request.getParameter("id").getBytes("ISO-8859-1"),"utf-8");
  //out.print(idName);
   Connection myCon=MyConnection.getConnection();
   String sql="select * from user where username=? ";
   PreparedStatement pst=myCon.prepareStatement(sql);
   pst.setString(1,idName);
  //Statement state=myCon.createStatement();
   ResultSet res=pst.executeQuery();  
  if(res.next()){
   %>
    <tr>
    <th>
    
    
    <input type="text" class="input-text-shadow" name="changeName"value="<%=res.getString("name")%>">
				</th>
				<th>				
				<img border="0" src=<%=res.getString("image")%> width="80" height="81" alter="图片未插入"><br> 
	           <lable>更改</lable>
						<input type="file" name="myfile" size=20/>
				</th>
				<th>
				<input type="text" class="input-text-shadow" name="time" value="<%=res.getString("time")%>">	
				</th>
				<th>			
				 <input type="text" class="input-text-shadow" name="drama" value="<%=res.getString("drama")%>">						
				</th>
				<th>
				<input type="text" class="input-text-shadow" name="information" value="<%=res.getString("information")%>">			
				</th>
				<th>
					<input type="text" class="input-text-shadow" name="author" value="<%=res.getString("author")%>">	
				</th> 
   </tr>
         <tr><th colspan="6" align="center"> <center>
         
					<div id="Buttons">
					
					
					<button class="editBtn" onclick="this.form.submit()">保存</button>
					<div>
				</center></th></tr>
				
				
				 
				
   <%   
   } 
   %>
    </table>
   </form>
   <!--     <form action="admin/datashowpage/submitImage.jsp" method="post" name="theFile" enctype="multipart/form-data">
    <input type="file" name="<%=idName%>" size=20/>
    <input type="submit" name="submitButton" value="submit">图片上传
   </form>-->
  </body>
</html>
