<%@ page language = "java" contentType = "text/html; charset = ISO-8859-1"
	import="java.io.*"
	import="java.sql.*"
	import="java.util.*"
	import="javax.sql.*"
	import = "java.sql.ResultSet"
	import = "java.sql.Statement"
	import = "java.sql.Connection"
	import = "java.sql.DriverManager"
	import = "java.sql.SQLException"
%>
<%
	Connection con = null;  
	PreparedStatement ps = null;
	ResultSet rs = null;
	Statement stmt = null;
	String name = request.getParameter("name");
	Integer id = 5;
%>
<html>
<head>
	<title>Updating Database</title>
</head>
<body>
<%
	try {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con =DriverManager.getConnection ("jdbc:odbc:USA");
		ps = con.prepareStatement("update companyinfo set info = ?,history = ? where name = ?");
		ps.setString(3, name);
		ps.setString(2, history);
		ps.setString(1, info);
		ps.executeUpdate();
		%>
			Database successfully Updated!<br>
		<%
		if(ps.executeUpdate()>=1){
			stmt=con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM companydetails");
			while(rs.next()){
				%>
					<%=rs.getObject(1).toString()%>
					<%=("\t\t\t")%>
					<%=rs.getObject(2).toString()%>
					<%=("<br>")%>
				<%
			}
		}

	} catch (IOException e) {
		throw new IOException("Can not display records.", e);
	} catch (ClassNotFoundException e) {
		throw new SQLException("JDBC Driver not found.", e);
	} finally {
		try {
			if(stmt != null){
				stmt.close();
				stmt = null;
			}
			if(ps != null) {
				ps.close();
				ps = null;
			}
			if(con != null) {
				con.close();
				con = null;
			}
		} catch (SQLException e) {}
	}
%>
</body>
</html>