<%@page import="com.klef.ep.services.RecruiterService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Recruiter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
    
<%

InitialContext context = new InitialContext();
RecruiterService recruiterService = (RecruiterService) context.lookup("java:global/EPProject/RecruiterServiceImpl!com.klef.ep.services.RecruiterService");

String remail = request.getParameter("remail");
String rpassword = request.getParameter("rpassword");

Recruiter rec = recruiterService.RecruiterLogin(remail, rpassword);

if(rec!=null)
{   
	  //session is an implicit object
	   session.setAttribute("rec", rec);  // emp is a session variable and emp is an object of type Employee class.
	   response.sendRedirect("viewallseekers1.jsp"); // will redirect to employee home
}
else
{
	  response.sendRedirect("recruiterloginfail.jsp");  // will redirect to login failed page
}



%>