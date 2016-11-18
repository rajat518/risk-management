
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
<%

Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
String id=request.getParameter("id");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "root");
Statement stmt = conn.createStatement();
String str="select title,user,sr,sa,sd,sc,st,sdp from riskdetails where projectid='"+id+"'";

ResultSet rs=stmt.executeQuery(str);
%>
<body>

<div id="header">
<p> 
  <a href="rms.html"><img src="images/rms.jpg" alt="Smiley face"
  style="float:left;width:150px;height:150px"></a> <img src="images/drdl.jpg" alt="Smiley face"
  style="float:right;width:150px;height:150px"><h1><font align="center" color="black">RISK</font> MANAGEMENT SYSTEM</h1> 

</p>
</div>



<div id="section">

<form  action="ap1.jsp">
    <% if(rs.next())
               {
%>
PROJECT NAME<input type=="text" value="<%=rs.getString("title")%>"  name="pname" readonly><br><br>
<br>
Listed By<input type="text"  value="<%=rs.getString("user")%>" name="lname" readonly><br><br
    <%
    String conc=" ";
    if(rs.getString("sr").equals("yes"))
               {
        conc=conc+"requirement,";
               }
 if(rs.getString("sa").equals("yes"))
               {
        conc=conc+"analysis,";
               }
     if(rs.getString("sd").equals("yes"))
               {
        conc=conc+"design,";
               }
     if(rs.getString("sc").equals("yes"))
               {
        conc=conc+"coding,";
               }
     if(rs.getString("st").equals("yes"))
               {
        conc=conc+"testing,";
               }
     if(rs.getString("sdp").equals("yes"))
               {
        conc=conc+"deployment,";
               }
    out.println(conc);
    %>
    
    
    <center>span of the risk<textarea cols="40" type="text"  name="span"  readonly><%=conc%></textarea> <br><br>

    


probability<select id="mySelect" onchange="myFunction()"  >
  <option value="low">low
  <option value="high">high
 
</select>
priority<select id="mySelect1" onchange="myFunction()">
  <option value="min">min
  <option value="maj">maj
  
</select>



<p id="demo"></p>

<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;
    var y = document.getElementById("mySelect1").value;

    if(x=="low" && y=="min")
{
var z="low level risk";
}
 if(x=="high" && y=="min")
{
var z="moderate level risk";
}
 if(x=="low" && y=="maj")
{
var z="moderate level risk";
}
 if(x=="high" && y=="maj")
{
var z="high level risk";
}
   document.getElementById("imp").value=z;  
  
}
</script>



   
    IMPACT<input type="text" name="imp" id="imp" readonly><br><br>
  

  Metigate the Risk<input type="text" name="met"><br><br>

  Responsility<input type="text" name="res"><br>
<input type="submit"> <input type="reset">
</form>
</div>

<div id="footer">
<p>
</p>
</div>

</body>
</html>
<%
    }
else {
       }
    %>



