

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");

String cor=request.getParameter("cor");
String rstart=request.getParameter("rstart");
String rend=request.getParameter("rend");
String astart=request.getParameter("astart");
String aend=request.getParameter("aend");

String dstart=request.getParameter("dstart");
String dend=request.getParameter("dend");

String cstart=request.getParameter("cstart");
String cend=request.getParameter("cend");

String tstart=request.getParameter("tstart");
String tend=request.getParameter("tend");

String dpstart=request.getParameter("dpstart");
String dpend=request.getParameter("dpend");

String spanofrisk1=request.getParameter("spanofrisk1");
String spanofrisk2=request.getParameter("spanofrisk2");
String spanofrisk3=request.getParameter("spanofrisk3");
String spanofrisk4=request.getParameter("spanofrisk4");
String spanofrisk5=request.getParameter("spanofrisk5");
String spanofrisk6=request.getParameter("spanofrisk6");
String name=(String)session.getAttribute("name");
String sp1,sp2,sp3,sp4,sp5,sp6;
if(spanofrisk1!=null)
       {
    sp1="yes";
}
else
       {
    sp1="no";
}
if(spanofrisk2!=null)
       {
    sp2="yes";
}
else
       {
    sp2="no";
}
if(spanofrisk3!=null)
       {
    sp3="yes";
}
else
       {
    sp3="no";
}
if(spanofrisk3!=null)
       {
    sp3="yes";
}
else
       {
    sp3="no";
}
if(spanofrisk4!=null)
       {
    sp4="yes";
}
else
       {
    sp4="no";
}
if(spanofrisk5!=null)
       {
    sp5="yes";
}
else
       {
    sp5="no";
}
if(spanofrisk6!=null)
       {
    sp6="yes";
}
else
       {
    sp6="no";
}
String ps=request.getParameter("ps");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "root");
Statement stmt = conn.createStatement();
String str="insert into riskdetails values('"+pid+"','"+pname+"','"+cor+"','"+rstart+"','"+rend+"','"+astart+"','"+aend+"','"+dstart+"','"+dend+"','"+cstart+"','"+cend+"','"+tstart+"','"+tend+"','"+dpstart+"','"+dpend+"','"+sp1+"','"+sp2+"','"+sp3+"','"+sp4+"','"+sp5+"','"+sp6+"','"+ps+"','"+name+"')";
    
stmt.executeUpdate(str);
stmt.close();
conn.close();
response.sendRedirect("home.html");

%>