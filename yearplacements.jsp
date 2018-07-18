<body bgcolor='dodgerblue' text='white'>
<%@ page language='java' import='java.sql.*' %>
<%
  try
   {
		String t3=request.getParameter("t2");
		
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	PreparedStatement pt=cn.prepareStatement("select * from companyinfo where year='"+t3+"'");
	
	ResultSet rs=pt.executeQuery();
	out.println("<table border='1' width='80%'>");
	out.println("<tr><th>Id</th><th>Name</th><th>Info</th><th>Placements</th><th>CSE</th><th>IT</th><th>EEE</th><th>ECE</th></tr>");
	out.println("<center>Year:' "+t3+" '</center>");
	while(rs.next())
	 {
		
		 out.println("<tr><td>"+rs.getString(1)+"</td>");
	         out.println("<td>"+rs.getString(2)+"</td>");
	         out.println("<td>"+rs.getString(3)+"</td>");
			 out.println("<td>"+rs.getString(4)+"</td>");
			  out.println("<td>"+rs.getString(5)+"</td>");
			 out.println("<td>"+rs.getString(6)+"</td>");	
			 out.println("<td>"+rs.getString(7)+"</td>");
			 out.println("<td>"+rs.getString(8)+"</td></tr>");


	 }
	out.println("</table>"); 
	out.println("<br/>"); 
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style='text-decoration:none' href='viewcompany.jsp' >Go Back</a>");
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