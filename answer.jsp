<body >
<form name='f1' method='post' action='answer1.jsp'>
<head>
		<style>
		a{
		 text-decoration:none; }
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
		
		
		
	background:url(images/seniorqu.jpg); margin:0; background-size:cover;
}
</style>
	</head>	
	
			<center>
			<header>
  			 <h1>Feedback analysis of interview</h1>
			</header>
			<header id="hid">
			<a href="seniorpage.jsp">Home</a>&nbsp;&nbsp;&nbsp;
 
   <a href="questions.html">Post Queries</a>&nbsp;&nbsp;&nbsp;
   <a href="answer.jsp">Answer Queries</a>&nbsp;&nbsp;&nbsp;
   <a href="experience.html">AddExperience</a>&nbsp;&nbsp;&nbsp;
    <a href="seniorlogin.html">logout</a>&nbsp;&nbsp;&nbsp;
</header>

<center><h3>Forum</h3>
<b>Select Question to Answer:</b>
<%@ page language='java' import='java.sql.*' %>
<%
     try
       {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	Statement stmt=cn.createStatement();
	String str="select question from query2 ";
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
%>
</form>
</body>
</body>
