<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete_user.jsp' starting page</title>
    
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
  
   String idName=new String(request.getParameter("id").getBytes("ISO-8859-1"),"utf-8");
   Connection myCon=MyConnection.getConnection();
   String sql="DELETE FROM user WHERE username =?";
   PreparedStatement pst=myCon.prepareStatement(sql);
   pst.setString(1,idName);
  
   
  int flag=pst.executeUpdate();
		if(flag>0){
				out.println("<script language='javascript'>alert('删除成功');window.location.href='admin/SearchAndEdit.jsp';</script>");
				
			}else{
				out.println("<script language='javascript'>alert('删除失败');window.location.href='admin/SearchAndEdit.jsp';</script>");
			}
   %>
  </body>
</html>
