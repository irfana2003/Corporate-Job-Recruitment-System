<%@page import="com.klef.ep.services.SeekerService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Seeker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
    
<%

InitialContext context = new InitialContext();
SeekerService seekerService = (SeekerService) context.lookup("java:global/EPProject/SeekerServiceImpl!com.klef.ep.services.SeekerService");

String semail = request.getParameter("semail");
String spassword = request.getParameter("spassword");

Seeker emp = seekerService.SeekerLogin(semail, spassword);

if(emp!=null)
{   
	  //session is an implicit object
	   session.setAttribute("emp", emp);  // emp is a session variable and emp is an object of type Employee class.
	   response.sendRedirect("seekerhome.jsp"); // will redirect to employee home
}
else
{
	  response.sendRedirect("seekerloginfail.jsp");  // will redirect to login failed page
}



%>