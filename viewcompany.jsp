<%@ page import="java.sql.*" %>
<body>


<%
String str=null;
Connection con=null;
PreparedStatement pst=null;

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("select name from companyinfo");

ResultSet rs=pst.executeQuery();

out.println("<p style='color:white;font-size:20px'>&nbsp;&nbsp;Company Name:</p>");
while(rs.next()){
	str=rs.getString(1);
	out.println("<a style='color:white;text-decoration:none ;font-size:20' href='companydetails.jsp?t1="+str+"'>"+str+"</a>");
	out.println("<br/>");	
}
}
catch(Exception e){ out.println(e); }

%>
<%
String str1=null;
Connection con1=null;
PreparedStatement pst1=null;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con1=DriverManager.getConnection("jdbc:odbc:USA");
pst1=con.prepareStatement("select year from companyinfo ");
ResultSet rs1=pst1.executeQuery();
out.println("<p style='color:white;font-size:20px'>&nbsp;&nbsp;Year Wise Placements:</p>");
out.println("<br/>");
while(rs1.next()){
	str1=rs1.getString(1);
	out.println("<a style='color:white;text-decoration:none' href='yearplacements.jsp?t2="+str1+"'>"+str1+"</a>");
	out.println("<br/>");
}
}
catch(Exception e){ out.println(e); }
%>


</body>						

