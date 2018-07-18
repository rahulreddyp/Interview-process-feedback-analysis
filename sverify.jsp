<%@ page language='java' import='java.sql.*' %>

<body>
<%
     try
      {
	String s1=request.getParameter("t1").trim();
	String s2=request.getParameter("t2").trim();
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
		Statement stmt=cn.createStatement();
		String str="select username,password from senior where username='"+s1+"' and password='"+s2+"' ";
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
		if(c>0){ response.sendRedirect("seniorpage.jsp");
		}
		if(c==0)
		 {
              session.setAttribute("msg","InValid UserName/PassWord are Entered...");
	           response.sendRedirect("serror.jsp");
		 }
		 
		 
		 }
		 catch(Exception e){
		 System.out.println(e); }
		 %>
</body>		 