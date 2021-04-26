<?php
include '../connection.php';


    $email = $_POST['email'];
    $password = md5($_POST['password']);
    
    $result = mysqli_query($con,"SELECT *FROM  userRegistration WHERE email = '$email' and passwordz = '$password'");

    if(!empty(mysqli_num_rows($result))){
        echo 1;
    }else{
        $result = mysqli_query($con,"SELECT *FROM  userRegistration WHERE email = '$email' ");
        $result2 = mysqli_query($con,"SELECT *FROM  userRegistration WHERE passwordz = '$password' ");
        if(empty(mysqli_num_rows($result))){
            echo "Invalid Email";
        }elseif(empty(mysqli_num_rows($result2))){
            echo "Invalid Password";
        }
    }



?>