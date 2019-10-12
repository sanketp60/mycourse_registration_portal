<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="dashboard.css">
</head>


<?php 

session_start();

$_SESSION["currentUser"]="null";

$user_name = "root";
$password = "";
$database = "coursereg";
$host_name = "localhost"; 

$con=mysqli_connect($host_name, $user_name, $password, $database);

if(!$con) {
           die("Connection failed: " . mysqli_connect_error());
          }
$stu_email = $_POST['EmailId'];
$stu_password = $_POST['userPass'];
$sql = "SELECT stu_password FROM stu_details WHERE stu_email = '$stu_email'";
$result = mysqli_query($con,$sql);

$rows = mysqli_num_rows($result); 

while ($row = mysqli_fetch_array($result)) {         
    if ($row['stu_password'] == $stu_password){
        $_SESSION["currentUser"] = $stu_email;
    }
} 

if($_SESSION["currentUser"] == 'null'){
    echo "<script type='text/javascript'>alert('Incorrect email or password');window.location = 'login_signup.html';</script>";
}

mysqli_close($con);
?>

<body>
    <ul>
        <li><a class="active" href="#home">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="#about">About</a></li>
    </ul>
</body>
</html>