
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

<form  action="edel1.jsp">

</div>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "root");
Statement stmt = conn.createStatement();
String str="select userid,username,designation from login";

ResultSet rs=stmt.executeQuery(str);
%>
<table><tr>
            <th>select</th>
            <th>employee id</th>
            <th>employee name</th>
            <th>designation</th>
        </tr>
        <%
while(rs.next())
       {
    %>
    
    
    <tr>
        <td><input type="checkbox" name="list" value="<%=rs.getString("userid")%>"/></td>
        <td><%=rs.getString("userid")%>
            
           
</td>
        <td><%=rs.getString("username")%>
</td>
    <td><%=rs.getString("designation")%>
</td></tr>
  
        <%
               }
%>
        </table>
<center><input type="submit" value="delete"/></center>
</form>
</body>
</html>

    
