<%-- 
    Document   : mail
    Created on : Jun 3, 2017, 11:05:40 PM
    Author     : iamsu
--%>

<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
			

		
		
		
		
		
		
            String fromMail=request.getParameter("fMail");
            String password=request.getParameter("password");
            String toMail=request.getParameter("tMail");
            String sub=request.getParameter("sub");
            String msg=request.getParameter("msg");
            
                            try{
								
                //Creating a result for getting status that messsage is delivered or not!
                String result;
                // Get recipient's email-ID, message & subject-line from index.html page
                final String to = toMail;
	
                final String subject = sub;
                
                String messg = " Dear , <br/><br/> <i>Warm Greetings from  Job Portal!!</i> ";
                msg+="<br/><br/>Warm Regards<br/>  Job Portal Team. ";
                messg=messg.concat(msg);
                
                // Sender's email ID and password needs to be mentioned
                final String from = fromMail;
                final String pass = password;
 
                // Defining the gmail host
                String host = "smtp.gmail.com";
 
                // Creating Properties object
                Properties props = new Properties();
 
                    // Defining properties
                    props.put("mail.smtp.host", host);
                    props.put("mail.transport.protocol", "smtp");
                    props.put("mail.smtp.auth", "true");
                    props.put("mail.smtp.starttls.enable", "true");
                    props.put("mail.user", from);
                    props.put("mail.password", pass);
                    props.put("mail.port", "465");
 
                // Authorized the Session object.
                Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, pass);
                }
            });
 
                    try {
                        // Create a default MimeMessage object.
                        // Set From: header field of the header.
                        message.setFrom(new InternetAddress(from));
                        // Set To: header field of the header.
                        message.addRecipient(Message.RecipientType.TO,
                                new InternetAddress(to));
                        // Set Subject: header field
                        message.setSubject(subject);
                        // Now set the actual message
                        message.setContent(messg, "text/html; charset=utf-8");
                        // Send message
                        Transport.send(message);
                        out.print("Sent");
                        } catch (MessagingException mex) {
                            mex.printStackTrace();
                            result = "Error: unable to send mail....";
                        }
                    }
                    catch(Exception e)
                    {
                       out.print(e);
                    }

        %>
    </body>
</html>