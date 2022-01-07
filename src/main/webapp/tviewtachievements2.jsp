<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>The Northcap University Year Book</title></head>

<body>
    
        
    <center>
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
        
        String sql="select * from teacherevents where yr = '"+year+"' and username = '"+username+"' and branch = '"+branch+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
        String designation = null;
        String qualificaion = null;
        String exp = null;
        String specialization = null;
        String subjects = null;
        
        while(rs.next()){
            designation = rs.getString("designation");
            qualificaion = rs.getString("qualificaion");
            exp = rs.getString("exp");
            specialization = rs.getString("specialization");
            subjects = rs.getString("subjects");
        }
	%>
        <center>
     <br/>   
    <h2><font color="black" >Teacher Achievement </font></h2>
    <table width="201" border="1.5" cellpadding="0" cellspacing="0"  >

 

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Name </font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;"> 
    <input type="text" name="username" size="25" readonly="" value="<%=username%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Branch</font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;">
    <input type="text" name="branch" size="25" readonly="" value="<%=branch%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Year</font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;">
    <input type="text" name="year" size="25" readonly="" value="<%=year%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Designation</font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;"> 
    <input type="text" name="designation" size="25" readonly="" value="<%=designation%>"> </div></td>
    </tr>

    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Qualification</font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;">
    <input type="text" name="qualificaion" size="25" readonly="" value="<%=qualificaion%>"></div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Experience</font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;">
    <input type="text" name="exp" size="25" readonly="" value="<%=exp%>"></div></td>
    </tr>
    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black"> Specialization</font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;"> 
    <input type="text" name="specialization" size="25" readonly="" value="<%=specialization%>"> </div></td>
    </tr>

    <tr>
    <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
    <strong><font color="black">Subjects</font></strong></div></td>
    <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:0px;">
    <input type="text" name="subjects" size="25" readonly="" value="<%=subjects%>"></div></td>
    </tr>
    
    </table>
    <br/><br/><a href="tviewtachievements.jsp"><button type="button">Back</button></a></div></td>
    </center>
        <br/>
    <br>
    <a href="logout.jsp">Logout</a>
</body></center>

</html>