<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert.jsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
    <%
   Connection myCon=MyConnection.getConnection();
   Statement state=myCon.createStatement(); 
   String str="INSERT INTO user(username,password,email,phone,sign,image) Values("+request.getParameter("username")+","+request.getParameter("password")+","+request.getParameter("email")+","+request.getParameter("phone")+","+request.getParameter("sign")+","+request.getParameter("image")+")";
   state.executeUpdate(str);
   ResultSet res=state.executeQuery(str);
   
   
   ResultSet rs; //建立ResultSet(结果集)对象
   rs =state.executeQuery("SELECT * FROM user"); //执行SQL语句
   
   %>
  <CENTER>
<TABLE bgcolor=pink>
<TR bgcolor=silver>
<TD><B>姓名</B></TD><TD><B>密码</B></TD><TD><B>邮件</B></TD><TD><B>电话</B></TD><TD><B>签名</B></TD><TD><B>图片</B></TD>
</TR>
<%
//利用while循环将数据表中的记录列出
while (rs.next())
{
%>
<TR bgcolor=white>
<TD><B><%= rs.getString("username") %></B></TD>
<TD><B><%= rs.getString("password") %></B></TD>
<TD><B><%= rs.getString("email") %></B></TD>
<TD><B><%= rs.getString("phone") %></B></TD>
<TD><B><%= rs.getString("sign") %></B></TD>
<TD><B><%= rs.getString("image") %></B></TD>



</TR>
<%
}

rs.close(); //关闭ResultSet对象
state.close(); //关闭Statement对象
myCon.close(); //关闭Connection对象
%>
</TABLE>
</CENTER>

   %>

   
  </body>
</html>
