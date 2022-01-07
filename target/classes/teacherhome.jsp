<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>The Northcap University Year Book</title>
</head>

<body>
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert('Login Success..!');</script> 
        <%}%>
    
    <header class="main-header">
        <center><h1>The Northcap University Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
       <center><br/>
           <a href="teacherhome.jsp" class="active">Home</a>
            
         
       </center> 
    </nav>
    <!-- Login Form -->
    <br/><br/><center>
    <div class="form-div animated flip">
        <%
        String user = session.getAttribute("user").toString();
        %>
        <h2>Welcome <%=user%></h2>
    </div></center>
    <br/><br/><br/><center>
    	<a href="tupdateprofile.jsp">Update Profile</a><br>
    	<a href="tteacherachievements.jsp">Achievements</a>
    	</center>
    <br/><br/> 
    <br><br><br><br>
       <center><a href="logout.jsp">Logout</a>
</center>
</body>

</html>