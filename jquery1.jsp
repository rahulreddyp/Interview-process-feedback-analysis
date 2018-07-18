<%@ page import="java.sql.*" %>
<body bgcolor="pink" >


<%
Connection con=null;
PreparedStatement pst=null;
try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("insert into query2 values(?,?,?,?)");

String s1=request.getParameter("qstn");
String a1=(String)session.getAttribute("username");

pst.setString(1,s1);
pst.setString(2,a1);
pst.setString(3,null);
pst.setString(4,null);

pst.executeUpdate();
out.println("Question Posted Successfully");
out.println("<br/>");
out.println("<a href='juniorpage.jsp'>&nbsp;&nbsp;Go Back</a>");
pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}

%>