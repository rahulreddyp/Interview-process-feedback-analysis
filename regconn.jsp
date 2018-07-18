<%@ page import="java.sql.*" %>
<body bgcolor="pink" >


<%
Connection con=null;
PreparedStatement pst=null;
try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("insert into senior values(?,?,?,?,?,?)");

String s1=request.getParameter("uname");
String s2=request.getParameter("pwd");
String s3=request.getParameter("cpwd");
String s4=request.getParameter("hno");
String s5=request.getParameter("branch");
String s6=request.getParameter("semail");

pst.setString(1,s1);
pst.setString(2,s2);
pst.setString(3,s3);
pst.setString(4,s4);
pst.setString(5,s5);
pst.setString(6,s6);
pst.executeUpdate();
out.println("hai");
out.println("Record Added Successfully");
out.println("<br/>");
out.println("<a href='seniorlogin.html'>&nbsp;&nbsp;Login</a>");
pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}

%>