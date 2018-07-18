<%@ page import="java.sql.*" %>
<body  >

<form action="sendemail.html">
<%
Connection con=null;
PreparedStatement pst=null;
try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("insert into companyinfo values(?,?,?,?,?,?,?,?,?)");
String s1=request.getParameter("id");
String s2=request.getParameter("name");
String s3=request.getParameter("info");
String s4=request.getParameter("placements");
String s5=request.getParameter("cse");
String s6=request.getParameter("it");
String s7=request.getParameter("eee");
String s8=request.getParameter("ece");
String s9=request.getParameter("year");

pst.setString(1,s1);
pst.setString(2,s2);
pst.setString(3,s3);
pst.setString(4,s4);
pst.setString(5,s5);
pst.setString(6,s6);
pst.setString(7,s7);
pst.setString(8,s8);
pst.setString(9,s9);

pst.executeUpdate();
if(con!=null){
	out.println("<p style='color:white;font-size:20px'>&nbsp;&nbsp;Added Successfully</p>");
	
}
pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
} %>
</body>