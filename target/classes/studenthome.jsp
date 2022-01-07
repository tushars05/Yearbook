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
    <br><br>
    <!-- Dropdown Navbar -->
    <nav>
            <center>
    		<a href="studenthome.jsp">Home</a><br>
            
     </center>
    </nav>
    <!-- Login Form -->
    <center>
    <br/>
    <div class="form-div animated flip">
        <%
        String user = session.getAttribute("user").toString();
        %>
        <h2>Welcome <%=user%></h2>
       <br>
    </div>
    <a href="supdateprofile.jsp" class="active">Update Profile</a><br><br>
    <a href="sviewachievements.jsp">Achievements</a></center>

    <br><br>    <br>
    <center> <a href="logout.jsp">Logout</a></center>
</body>

</html>