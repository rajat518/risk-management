

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
String title=request.getParameter("pname");
String imp=request.getParameter("imp");
String met=request.getParameter("met");

String res=request.getParameter("res");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "root");
Statement stmt = conn.createStatement();
String str= "UPDATE riskdetails SET impact='"+imp+"', metigation='"+met+"', response='"+res+"' WHERE title='"+title+"'";
    
stmt.executeUpdate(str);
response.sendRedirect("add.html");

%>