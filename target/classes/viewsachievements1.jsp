<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>The Northcap University Year Book</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>
<center>
<body>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>The Northcap University Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         
            <a href="adminhome.jsp">Home</a>
           
           
    </nav>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
        <%
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        
        String sql="select * from studentevents where yr = '"+year+"' and branch = '"+branch+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
        if(rs.next()){
        
        String sql2="select * from studentevents where yr = '"+year+"' and branch = '"+branch+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        <br/><br/>
         <center>
             <h2><font color="black" size="5"> Student Achievements</font></h2>
        <style>
        td{
            text-align: center;
            height: 25px;
        }
        th{
            text-align: center;
            height: 25px;
        }
           
        </style>
        <table border="2" width="90%">

        <tr style="background-color: brown">
        <th><font color="black"> Name</th>
        <th><font color="black">Year</th>
        <th><font color="black">Branch</th>
        <th><font color="black">View Details</th>

        </tr>

        <%                while (rs1.next()) {
        %>

        <tr>
        <td><font color="black"><%=rs1.getString("username")%></td>
        <td><font color="black"><%=rs1.getString("yr")%></td>
        <td><font color="black"><%=rs1.getString("branch")%></td>
        <td><a href="viewsachievements2.jsp?username=<%=rs1.getString("username")%>&year=<%=rs1.getString("yr")%>&branch=<%=rs1.getString("branch")%>"><button type="button">View Details</button></a></td>
        </tr>
        <%
            }
        }
        else{
         out.println("<br/><br/><br/><br/><br/><center><font color='red' size='5'>No Achievements to Display...</font></center> ");
        }
        %>
        </table>
         <br/><br/><a href="viewsachievements.jsp"><button type="button">Back</button></a>
        </center> 
        <br/><br/><br/><br/>
         <a href="logout.jsp">Logout</a>
    <br></center>
</body>

</html>