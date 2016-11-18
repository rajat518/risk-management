
<html>
<head>
<style>
#header {
    background-color:brown;
    color:white;
    text-align:center;
    padding:20px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:350px;
    float:left;
    background-color:white;
    padding:10px;	 	 
}
#footer {
    background-color:brown;
    color:white;
    clear:both;
    text-align:center;
   padding:20px;	 	 
}
</style>
</head>

<body>

<div id="header">
<p> 
  <a href="rms.html"><img src="images/rms.jpg" alt="Smiley face"
  style="float:left;width:150px;height:150px"></a> <img src="images/drdl.jpg" alt="Smiley face"
  style="float:right;width:150px;height:150px"><h1><font align="center" color="black">RISK</font> MANAGEMENT SYSTEM</h1> 

</p>
</div>



<div id="section">

<form  TEXT="BROWN">

</div>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "root");
Statement stmt = conn.createStatement();
String str="select title,projectid from riskdetails";

ResultSet rs=stmt.executeQuery(str);
%><br><br><br><center>
<table BORDER="5"><tr>
            <th><h2>PROJECT ID</h2></th>
            <th><h2>PROJECT TITLE</h2></th>
        </tr>
        <%
while(rs.next())
       {
    %>
    
    <tr><td><a href="ap.jsp?id=<%=rs.getString("projectid")%>">
            <%=rs.getString("projectid")%></a>
            
           
</td>
        <td><%=rs.getString("title")%>
</td></tr>
        <%
               }
%>
    </table></center>
</body>
</html>

    
