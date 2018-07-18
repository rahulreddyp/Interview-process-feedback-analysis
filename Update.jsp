<body >
<form name='f1' method='post' action='Update1.jsp'>
<center><h3>Modification Page</h3>
<p style='color:white'> Select Company ID to Modify:</p>
<%@ page language='java' import='java.sql.*' %>
<%
     try
       {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	Statement stmt=cn.createStatement();
	String str="select id from companyinfo";
	ResultSet rs=stmt.executeQuery(str);
	out.println("<select name='xid'>");
	while(rs.next())
	 {
	        out.println("<option>"+rs.getString(1)+"</option>");
	 }
	out.println("</select>");
	stmt.close();
	cn.close();
	out.println("<input type='submit' value=' Show '>");
        }
       catch(Exception e)
        {

        }
%><br></form>

<p style='color:white'> Select Year to Modify:</p>
<form name='f2' method='post' action='yearupdate.jsp'>

<%
     try
       {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection cn1=DriverManager.getConnection("jdbc:odbc:USA");
	Statement stmt1=cn1.createStatement();
	String str1="select year from companyinfo";
	ResultSet rs1=stmt1.executeQuery(str1);
	out.println("<select name='xyear'>");
	while(rs1.next())
	 {
	        out.println("<option>"+rs1.getString(1)+"</option>");
	 }
	out.println("</select>");
	stmt1.close();
	cn1.close();
	out.println("<input type='submit' value=' Show '>");
        }
       catch(Exception e)
        {

        }
%>
</form>
</body>
</body>