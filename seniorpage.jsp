<html>
	<head>
	<style>body{
	background:url(images1/bk3.jpg); margin:0; background-size:cover; 
	
}
	
		   #hid{
	background-color: cyan;
	font-size:20px;
}
img {
	align:center;
	
	margin-left:500px;
	
	padding:0;
}

a{
	text-decoration:none;
}
			header {
    padding: 10px;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;

	}
	body {
		
		
    font-family: Arial, Helvetica, sans-serif;
    background-color:null;
}
	</style>
	</head>
	<body>
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
<br/><br/><br/><br/>
<marquee behavior="scroll" height="100px"><h2>Welcome to Senior Page</h2></marquee>

<%=
	session.getAttribute("username");
	
%>

</body>
</html>