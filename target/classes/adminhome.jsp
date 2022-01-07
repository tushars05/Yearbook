<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>The Northcap University Year Book</title>
    </head>
<body>
    <center>
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert('Login Success..!');</script> 
        <%}%>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>The Northcap University Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
            <a href="adminhome.jsp" class="active">Home</a><br>
			
			<br>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        
        <h2>Welcome Admin</h2>
       
    </div><br><br>
    
			<a href="teacherachievements.jsp">Teacher Achievements</a><br>
			<a href="studentachievements.jsp">Student Achievements</a>
			<br><br><br>
    <a href="logout.jsp">Logout</a>
    </footer></center>
</body>

</html>