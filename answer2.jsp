<%@ page language='java' import='java.sql.*' %>
<body> <!--style='background-image:url("images/senior.jpg");background-repeat:no-repeat; background-size:cover; text='red'-->
<form action="jsendemail.jsp">
<%
        try
          {
	String xid=(String)session.getAttribute("xid");
	String answer=request.getParameter("t2");
	
	
	
	
	


      if(answer.length()!=0)
	 {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	Statement stmt=cn.createStatement();
   String a1=(String)session.getAttribute("username");
	String str="update query2 set answer='"+answer+"',sname='"+a1+"' where question='"+xid+"'";
	stmt.executeUpdate(str);

          out.println("<b>Answer Posted Successfully...</b>");
		  out.println("<br/>&nbsp;<input type='submit' value='Send Email'>");
		  out.println("<center><b><a href='answer.jsp'>Go Back</a></center>");
	stmt.close();
	cn.close();
	 }
	else
	 {
              out.println("<b>InComplete Answer to Post..</b>");
	 }
            }
           catch(Exception e)
            {
	out.println("Error : "+e);
            }
 %>
</body>