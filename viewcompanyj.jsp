

<%@ page import="java.sql.*" %>
<body  >
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
			background-image: url("images/bg.jpg");
			background-size:cover;
			background-repeat:no-repeat;
			
			height:400px;
			margin:0;
		}
		</style>
	</head>	
	<body>
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
	

<%
String str=null;
Connection con=null;
PreparedStatement pst=null;

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("select name from companyinfo ");

ResultSet rs=pst.executeQuery();
out.println("<p style='color:white;font-size:20px'>&nbsp;&nbsp;Company Name:</p>");
out.println("<br/>");
while(rs.next()){
	str=rs.getString(1);
	out.println("<a style='color:white;' href='companydetails.jsp?t1="+str+"'>"+str+"</a>");
	out.println("<br/>");
	
	

	
	
	
}
out.println("<a  style='color:red' href='juniorpage.jsp'>Go Back</a>");
rs.close();
pst.close();
con.close();

}
catch(Exception e){ out.println(e); }

%>

</body>						

