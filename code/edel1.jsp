<%-- 
    Document   : edel1
    Created on : 14 Mar, 2015, 5:21:40 PM
    Author     : arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
       
    <body>
        
        
        <% 
String []str=request.getParameterValues("list");


for(int i=0;i<str.length;i++)
               {
    
    
    
    Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "root");
Statement stmt = conn.createStatement();
String str1="delete from login where userid='"+str[i]+"'";
    
stmt.executeUpdate(str1);
stmt.close();
conn.close();

    
    
    
    //out.println(str[i]);
    
       }


        

response.sendRedirect("edel.jsp");

%>
        
        
    </body>
</html>
