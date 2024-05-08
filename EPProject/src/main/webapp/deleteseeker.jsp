<%@page import="com.klef.ep.services.SeekerService"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Seeker"%>
<%@page import="com.klef.ep.models.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
    
<%

InitialContext context = new InitialContext();
AdminService adminService = (AdminService) context.lookup("");

String eid = request.getParameter("eid");
int id = Integer.parseInt(eid);

adminService.deleteSeeker(id);

response.sendRedirect("viewallseekers.jsp");


%>