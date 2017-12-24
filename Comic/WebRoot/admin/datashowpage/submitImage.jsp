<%@ page language="java" import="java.util.*,java.sql.*,MyJavaBean.*" pageEncoding="utf-8"%>
<%@ page import="com.jspsmart.upload.*"%>
<jsp:useBean id="theSmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Upload image</title>
    
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
    <center>正在上传文件.....
    <% 
    
 // String idName=new String(request.getParameter("id").getBytes("ISO-8859-1"),"utf-8");
 String idName=request.getParameter("name");
    theSmartUpload.initialize(pageContext);
    theSmartUpload.setTotalMaxFileSize(30*1024*1024);
     theSmartUpload.upload();
    String fn=theSmartUpload.getFiles().getFile(0).getFieldName();//获取文件名
    String imagePath="images/main/"+fn;
   // String savepath=request.getSession().getServletContext().getRealPath("/")+"images\\main";
     theSmartUpload.save("F:\\MyEclipseWorkplace\\Comics\\WebRoot\\images\\main");
    out.println(fn);
    out.println("正在上传文件.....");
    
    Connection myCon=MyConnection.getConnection();
   String sql="update recommend set image=? where name=?";
   PreparedStatement pst=myCon.prepareStatement(sql);
   pst.setString(1,imagePath);
   pst.setString(2,idName);


			int flag=pst.executeUpdate();
		if(flag>0){
				out.println("<script language='javascript'>alert('保存成功');window.location.href='admin/SearchAndEdit.jsp';</script>");
			}else{
				out.println("<script language='javascript'>alert('保存失败');window.location.href='admin/SearchAndEdit.jsp';</script>");
			}
    
    
    
    
    %>
    </center>
  </body>
</html>
