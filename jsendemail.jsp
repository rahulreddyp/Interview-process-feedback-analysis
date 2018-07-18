<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
    <body>
	<%
	Connection con=null;
PreparedStatement pst=null;
ResultSet rs=null;
String dtr=null;
String dtr1=null;
PreparedStatement pst1=null;
ResultSet rs1=null;

try
{
	String xid=(String)session.getAttribute("xid");;
	

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("select jname from query2 where question='"+xid+"' ");
rs=pst.executeQuery();

while(rs.next()){
		dtr=rs.getString(1);
		
}
pst1=con.prepareStatement("select email from junior where username='"+dtr+"' ");
rs1=pst1.executeQuery();
while(rs1.next()){
		dtr1=rs1.getString(1);
		
		
}
rs1.close();
pst1.close();

rs.close();
pst.close();
con.close();

}
catch(Exception e){
}


	
        out.println("<form action='jemail.jsp' method='post'>");
out.println("<input type='email' name='fMail' value='tpomaillogin@gmail.com' placeholder='From Email'/>");
out.println("<input type='password' name='password'  value='Tpologin' placeholder='Email password'/>");
out.println("<input type='email' name='tMail'  value='"+dtr1+"' placeholder='To Email'/>");
out.println("<input type='text' name='sub' value='Notification'  placeholder='subject'/>");
out.println("<textarea cols='30' rows='5' name='msg' value='Your Query has been answered' placeholder='Message'></textarea>");
out.println("<input type='reset' value='Cancel'/>");
out.println("<input type='submit' value='Send'/>");
out.println("</form>");
%>
    </body>
	 
</html>
