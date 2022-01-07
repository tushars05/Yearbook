<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>The Northcap University Year Book</title>
    </head>

<body>
    
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert(' Details Updated Successfully..!');</script> 
        <%}%>
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Failed..!');</script> 
        <%}%>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>The Northcap University Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <center>
    		<a href="studenthome.jsp">Home</a></li><br>
     </center>
     <br/><br/><br/><br/>
    </nav><center>
    <!-- Login Form -->
    <div class="form-div animated flip">
    <h3><a href="saddsachievements.jsp"><font color="black">Add Achievements </font></a></h3>
    </div>
    <div class="form-div animated flip">
    <h3><a href="sviewachievements1.jsp"><font color="black">View Achievements </font></a></h3>
    </div></center>
    <br/><br/><br/><br/><br/>
    <center> <a href="logout.jsp">Logout</a></center>
</body>

</html>