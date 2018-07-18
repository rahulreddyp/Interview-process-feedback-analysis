<%@ page language='java' import='java.sql.*' %>

<body>
<%
     try
      {
	String s3=request.getParameter("t3").trim();
	String s4=request.getParameter("t4").trim();
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
		Statement stmt=cn.createStatement();
		String str="select username,password from junior where username='"+s3+"' and password='"+s4+"' ";
		ResultSet rs=stmt.executeQuery(str);
		int c=0;
		if(rs.next())
		 {
		          c++;
			session.setAttribute("username",rs.getString(1));
			session.setAttribute("password",rs.getString(2));

		 }
        
		stmt.close();
		cn.close();
		if(c>0){ response.sendRedirect("juniorpage.jsp");
		}
		if(c==0)
		 {
              session.setAttribute("msg","InValid UserName/PassWord are Entered...");
	           response.sendRedirect("jerror.jsp");
		 }
		 
		 
		 }
		 catch(Exception e){
		 System.out.println(e); }
		 %>
</body>		 