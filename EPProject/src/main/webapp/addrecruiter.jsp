<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.RecruiterService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Recruiter"%>
<%

InitialContext context = new InitialContext();
RecruiterService recruiterService = (RecruiterService) context.lookup("java:global/EPProject/RecruiterServiceImpl!com.klef.ep.services.RecruiterService");


String rfname = request.getParameter("rfname");
String rcname = request.getParameter("rcname");
String rname = request.getParameter("rname");
String remail = request.getParameter("remail");
String rphoneno = request.getParameter("rphoneno");
String rage = request.getParameter("rage");
String rpassword = request.getParameter("rpassword");
String raddress = request.getParameter("raddress");
String rcity = request.getParameter("rcity");
String rpostalcode = request.getParameter("rpostalcode");
String rcountry = request.getParameter("rcountry");



Recruiter rec = new Recruiter();

rec.setFullname(rfname);
rec.setCompanyname(rcname);
rec.setUsername(rname);
rec.setEmail(remail);
rec.setPhoneno(rphoneno);
rec.setAge(rage);
rec.setPassword(rpassword);
rec.setAddress(raddress);
rec.setCity(rcity);
rec.setPostalcode(rpostalcode);
rec.setCountry(rcountry);

recruiterService.addRecruiter(rec);

response.sendRedirect("addrecruitersuc.jsp");


%>