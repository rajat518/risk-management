

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
String ename=request.getParameter("ename");
String eid=request.getParameter("eid");

String epass=request.getParameter("epass");
String des=request.getParameter("des");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "root");
Statement stmt = conn.createStatement();
String str="insert into login values('"+ename+"','"+epass+"','"+eid+"','"+des+"')";
    
stmt.executeUpdate(str);
response.sendRedirect("add.html");

%>