<body>


<%

String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
if(s1.equals("Admin" )&& s2.equals("Admin")){
	session.setAttribute("usr","Administrator");
	response.sendRedirect("tpoptions.html");
}
else{
	session.setAttribute("msg","Invalid uname/password");
	response.sendRedirect("errorp.jsp");
}
		
	

%>

</body>

