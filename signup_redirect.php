
<html lang="en">
<head>
    <link rel="shortcut icon" href="logo_white.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MyCourse - SignUp Success</title>
    <link rel="stylesheet" href="signup_redirect.css">
</head>
<?php
$user_name = "root";
$password = "";
$database = "coursereg";
$host_name = "localhost"; 
$con=mysqli_connect($host_name, $user_name, $password, $database);
if(!$con){
    die("Connection failed: " . mysqli_connect_error());
}
$stu_id = $_POST['studentId'];
$clg_id = $_POST['college'];
$stu_name = $_POST['studentName'];
$stu_year = $_POST['currentYear'];
$stu_email = $_POST['EmailId'];
$stu_password = $_POST['userPass'];
?>
<body>
    <div class="container">
        <div class="mainContent">
            <div class="successMsg">
                <?php 
                $sql = "INSERT INTO stu_details VALUES ('$stu_id','$clg_id','$stu_name','$stu_year','$stu_email','$stu_password',NULL,NULL,NULL)";
                if(mysqli_query($con, $sql)) {
                    echo "<b>Awesome!</b>You're now signed up";
                } 
                else{
                    echo "<b>Error!</b>ID or Password may be repeated";
                    /*echo "Error: " . $sql . "<br>" . mysqli_error($con);*/
                }
                mysqli_close($con);
                ?>
                <button onclick="location.href='login_signup.html'" class="backText" type="button">Return Home</button>
            </div>
        </div> 
        <div class="footer">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempore magni vitae nisi suscipit tenetur magnam.</div>
    </div>
</body>
</html>


