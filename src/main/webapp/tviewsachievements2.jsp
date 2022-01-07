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
            <a href="teacherhome.jsp">Home</a>
    </nav>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
        <%
        String year = request.getParameter("year");
        String branch = request.getParameter("branch");
        String username = request.getParameter("username");
        
        String sql="select * from studentevents where yr = '"+year+"' and username = '"+username+"' and branch = '"+branch+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
        String rno = null;
        String ach = null;
        
        while(rs.next()){
            rno = rs.getString("rno");
            ach = rs.getString("ach");
        }
	%>
        <center>
    <h2><font color="black" >Student Achievement </font></h2>
    <table width="201" border="1.5" cellpadding="0" cellspacing="0"  >
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">  Name: </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="Center" class="style11" style="margin-left:0px;"> 
    <input type="text" name="username" size="25" readonly="" value="<%=username%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Branch: </font></strong></div></td>
    <td  width="160" valign="middle" height="48" ><div align="Center" class="style11" style="margin-left:0px;">
    <input type="text" name="branch" size="25" readonly="" value="<%=branch%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Year: </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="Center" class="style11" style="margin-left:0px;">
    <input type="text" name="year" size="25" readonly="" value="<%=year%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">  Roll No.: </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="Center" class="style11" style="margin-left:0px;"> 
    <input type="text" name="rno" size="25" readonly="" value="<%=rno%>"> </div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Achievement: </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="Center" class="style11" style="margin-left:0px;">
    <input type="text" name="about" size="25" readonly="" value="<%=ach%>"></div></td>
    </tr>
    
    
    </table>
    </center><br/>
    <a href="tviewsachievements.jsp"><button type="button">Back</button></a>
        <br/><br/>
    
            <a href="logout.jsp">Logout</a>
</body>
</center>
</html>