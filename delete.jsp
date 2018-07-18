<%@ page import="java.sql.*" %>
<body  >


<%
Connection con=null;
PreparedStatement pst=null;
try
{
String s1=request.getParameter("name");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("delete from companyinfo where name=?");




pst.setString(1,s1);

pst.executeUpdate();
if(con!=null){
	out.println("<p style='color:red;font-size:20px'>Deleted Successfully</p>");
	out.println("<br/><br/>");
	out.println("<img style='width:50%'  src='gifs/delete.gif'/>");
}
pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
} %>
</body>