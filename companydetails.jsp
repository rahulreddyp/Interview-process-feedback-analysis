<body bgcolor='dodgerblue' text='white'>
<%@ page language='java' import='java.sql.*' %>
<%
  try
   {
		String t2=request.getParameter("t1");
		
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	PreparedStatement pt=cn.prepareStatement("select * from companyinfo where name='"+t2+"'");
	
	ResultSet rs=pt.executeQuery();
	out.println("<table border='1'  width='80%'>");
	out.println("<tr><th>Id</th><th>Name</th><th>Info</th><th>Placements</th><th>CSE</th><th>IT</th><th>EEE</th><th>ECE</th><th>Year</th></tr>");

	while(rs.next())
	 {
		
		 out.println("<tr><td>"+rs.getString(1)+"</td>");
	         out.println("<td>"+rs.getString(2)+"</td>");
	         out.println("<td>"+rs.getString(3)+"</td>");
			 out.println("<td>"+rs.getString(4)+"</td>");
			  out.println("<td>"+rs.getString(5)+"</td>");
			 out.println("<td>"+rs.getString(6)+"</td>");	
			 out.println("<td>"+rs.getString(7)+"</td>");
			 out.println("<td>"+rs.getString(8)+"</td>");
			 out.println("<td>"+rs.getString(9)+"</td></tr>");


	 }
	out.println("</table>"); 
	out.println("<br/>"); 
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style='text-decoration:none' href='viewcompany.jsp'>Go Back</a>");
	rs.close();
	pt.close();
	cn.close();
    }
   catch(Exception e)  
    {
	out.println(e);
    }
	
%> 
</body>