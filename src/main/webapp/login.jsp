<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>The Northcap University Year Book</title>
</head>

<body>
    
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Login Failed..!');</script> 
        <%}%>
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert('Registered Successfully..!');</script> 
        <%}%>
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>The Northcap University Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <center><nav><a href="index.html" >Home</a>
    </nav></center>
    <!-- Login Form -->
    <div class="form-div animated flip"><center>
        <h2> Login Page</h2>
        <form action="loginact.jsp" method="post">
            <input type="text" placeholder="Username" name="username" required="" autocomplete="off">
            <br>
            <input type="password" placeholder="Password" name="password" required="">
            <br>
            
            <select name="utype" id="" required="">
            <option value="">--Select--</option>
            <option value="Admin">Admin</option>
            <option value="Teacher">Teacher</option>
            <option value="Student">Student</option>
        </select>
            <br>
            <br>
            <input type="submit" value="Login">
            <br>
            <br>
        </form></center>
    </div>
</body>

</html>