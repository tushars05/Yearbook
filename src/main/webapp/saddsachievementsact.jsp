
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String username = request.getParameter("username");
    String yr = request.getParameter("year");
    String rno = request.getParameter("rno");
    String branch = request.getParameter("branch");
    String ach = request.getParameter("ach");
    
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("insert into studentevents(username,yr,rno,branch,ach) values(?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,yr);    
    ps.setString(3,rno);
    ps.setString(4,branch);
    ps.setString(5,ach);
    ps.executeUpdate();


    response.sendRedirect("saddsachievements.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
        response.sendRedirect("saddsachievements.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   