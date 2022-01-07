<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>The Northcap University Year Book</title></head>
<body>
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>The Northcap University Year Book</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <center><nav><a href="index.html" >Home</a>
    </nav></center>
    <!-- Login Form -->
    <center>
    <div class="form-div animated flip">
        <h2>Registration Form</h2>
        <form action="registeract.jsp" method="post">
        <input type="text" placeholder="ID No." name="id" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="User Name" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" name="password" required="" autocomplete="off">
        <br>
        <input type="email" placeholder="E-mail Id" name="email" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="State" name="address" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Phone no." name="mobile" required="" autocomplete="off">
        <br>
        
        <select name="utype" id="" required="">
        <option value="">--Select--</option>
        <option value="Teacher">Teacher</option>
        <option value="Student">Student</option>
        </select>
        <br>
        <br>
        <input type="submit" value="REGISTER">
        <br>
        <br>
        </form>
    </div></center>
    <br>
</body>

</html>