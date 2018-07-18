<%@ page language='java' import='java.sql.*' %>
<form name='f1' method='get' action='answer2.jsp'>
<body >
<%
        try
          {
	String xid=request.getParameter("xid");
	session.setAttribute("xid",String.valueOf(xid));

	String str="select * from query2 where question='"+xid+"'";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery(str);
	if(rs.next())
	 {
out.println("<center><h3> Answers Page</h3>");
 out.println("<table><tr><th align='right'>Question : </th>");
	out.println("<td><input type='text' name='t1' value='"+rs.getString(1)+"' disabled size=10></td></tr>");
 out.println("<tr><th align='right'>Answer : </th>");
	out.println("<td><input type='text' name='t2' value='"+rs.getString(3)+"'  size=25></td></tr>");


	
	

 
 out.println("<table><br><input type='submit' value='Answer '>");
	 }
	stmt.close();
	cn.close();
          }
         catch(Exception e)
          {

          }
%>
</form>
</body>