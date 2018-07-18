<%@ page import="java.sql.*" %>
<body bgcolor="pink" >


<%
Connection con=null;
PreparedStatement pst=null;
try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("insert into junior values(?,?,?,?,?,?)");

String s5=request.getParameter("juname");
String s6=request.getParameter("jpwd");
String s7=request.getParameter("jcpwd");
String s8=request.getParameter("jhno");
String s9=request.getParameter("jbranch");
String s10=request.getParameter("email");

pst.setString(1,s5);
pst.setString(2,s6);
pst.setString(3,s7);
pst.setString(4,s8);
pst.setString(5,s9);
pst.setString(6,s10);
pst.executeUpdate();
out.println("Record Added Successfully");
out.println("<br/>");
out.println("<a href='junior.html'>&nbsp;&nbsp;Login</a>");
pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}

%>