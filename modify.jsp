<body bgcolor='dodgerblue' text='white'>
<%@ page language='java' import='java.sql.*,java.util.*' %>
<%
    try
    {
      // create a java mysql database connection
      String s1=request.getParameter("t1");
	  
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	PreparedStatement pt=cn.prepareStatement("update companyinfo set info=?,history=? where name=?");
	//Scanner s=new Scanner(System.in);
	//String str=s.next();
	out.println("Enter info:");
	out.println("<textarea rows=4 cols=20 name="inf"/>");
	out.println("Enter history:");
	out.println("<textarea rows=4 cols=20 name="hi"/>");
	pt.setString(1,inf);
	pt.setString(2,hi);
	pt.setString(3,s1);
	
	
      // execute the java preparedstatement
      pt.executeUpdate();
      
      cn.close();
    }
    catch (Exception e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
  }
}
%>