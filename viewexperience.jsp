<body bgcolor='dodgerblue' text='white'>
<head>
		<style>
		a{
		font-size:30px;
		text-decoration:none;
		}
			#hid{
				background-color: cyan;
				}

		header{
		
   		 padding: 10px;
    		color: white;
    		background-color: black;
    		clear: left;
   		text-align: center;
		}
		body{
			background-image: url("images/abstract.jpg");
			background-size:cover;
			background-repeat:no-repeat;
			background-position:center;
			height:400px;
			margin:0;
		}
		</style>
	</head>	
	
			<center>
			<header>
  			 <h1>Feedback analysis of interview</h1>
			</header>
			<header id="hid">
			<a href="juniorpage.jsp">Home</a>&nbsp;&nbsp;&nbsp;
 
   <a href="tquery.html">Query</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   <a href="viewcompanyj.jsp">View Companies</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="viewexperience.jsp">View Experience</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="junior.html">logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</header></body>
	<body>

<%@ page language='java' import='java.sql.*' %>
<%
  try
   {
		
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	PreparedStatement pt=cn.prepareStatement("select * from experience");
	
	ResultSet rs=pt.executeQuery();
	out.println("<table border='1' width='80%'>");
	out.println("<tr><th>Experience</th><th>Name</th></tr>");

	while(rs.next())
	 {
		
		 out.println("<tr><td>"+rs.getString(1)+"</td>");
	         out.println("<td>"+rs.getString(2)+"</td>");
	         
	 }
	out.println("</table>"); 
	out.println("<br/>"); 
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style='text-decoration:none' href='juniorpage.jsp' >Go Back</a>");
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