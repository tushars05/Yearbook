
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String username = request.getParameter("username");
    String year = request.getParameter("year");
    String designation = request.getParameter("designation");
    String branch = request.getParameter("branch");
    String qualificaion = request.getParameter("qualificaion");
    String exp = request.getParameter("exp");
    String specialization = request.getParameter("specialization");
    String subjects = request.getParameter("subjects");
    
    try{
    PreparedStatement ps = connection.prepareStatement("insert into teacherevents(username,designation,yr,branch,qualificaion,exp,specialization,subjects) values(?,?,?,?,?,?,?,?)");

    ps.setString(1,username);    
    ps.setString(2,designation);
    ps.setString(3,year);
    ps.setString(4,branch);
    ps.setString(5,qualificaion);  
    ps.setString(6,exp);
    ps.setString(7,specialization);
    ps.setString(8,subjects);
    ps.executeUpdate();


    response.sendRedirect("addtachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
        response.sendRedirect("addtachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   