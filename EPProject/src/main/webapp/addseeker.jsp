<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.SeekerService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Seeker"%>
<%

InitialContext context = new InitialContext();
SeekerService seekerService = (SeekerService) context.lookup("java:global/EPProject/SeekerServiceImpl!com.klef.ep.services.SeekerService");


String sfname = request.getParameter("sfname");
String slname = request.getParameter("slname");
String sname = request.getParameter("sname");
String semail = request.getParameter("semail");
String sphoneno = request.getParameter("sphoneno");
String sage = request.getParameter("sage");
String spassword = request.getParameter("spassword");
String saddress = request.getParameter("saddress");
String scity = request.getParameter("scity");
String spostalcode = request.getParameter("spostalcode");
String scountry = request.getParameter("scountry");



Seeker emp = new Seeker();

emp.setFirstname(sfname);
emp.setLastname(slname);
emp.setUsername(sname);
emp.setEmail(semail);
emp.setPhoneno(sphoneno);
emp.setAge(sage);
emp.setPassword(spassword);
emp.setAddress(saddress);
emp.setCity(scity);
emp.setPostalcode(spostalcode);
emp.setCountry(scountry);

seekerService.addSeeker(emp);

response.sendRedirect("addseekersuc.jsp");


%>