<?php
header("Content-Type: application/json; charset=UTF-8");
require_once('includes/connect.php');

///gather the form content
$name = $_POST['name'];
$email = $_POST['email'];
$msg = $_POST['message'];

$errors = array();

//validate and clean these values

$name = trim($name);
$email = trim($email);
$msg = trim($msg);

if(empty($name)) {
    $errors['name'] = 'Name input is required. You wouldn’t leave a title tag blank, would you?';
}

if(empty($email)) {
    $errors['email'] = 'An email address is kind of important. Unless you want me to send your message via carrier pigeon?';
} else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['legit_email'] = 'Invalid email format. Did you miss a closing tag?';
}

if(empty($msg)) {
    $errors['message'] = 'You almost sent a message! So close! Try adding words next time.';
}

if(empty($errors)) {

    //insert these values as a new row in the contacts table

    $query = "INSERT INTO contacts (name, email, message) VALUES (?, ?, ?)";

    $stmt = $connect->prepare($query);
    
    $stmt->bindParam(1, $name, PDO::PARAM_STR);
    $stmt->bindParam(2, $email, PDO::PARAM_STR);
    $stmt->bindParam(3, $msg, PDO::PARAM_STR);

    if($stmt->execute()) {

        //format and send these values in an email

        $to = 'me@isaacbilyea.com';
        $subject = 'Who knew? Your form actually works.';

        $message = "Someone actually filled out your form. I’m as shocked as you are.\n\n";
        $message .= "Name: ".$name."\n";
        $message .= "Email: ".$email."\n\n";
        $message .= "Prepare yourself for the most profound message you’ve ever read: \n".$msg;


        // mail($to,$subject,$message);

        echo json_encode(array("message" => "Look at that ball go!"));
    }
    
    $stmt = null;

    } else {
        echo json_encode(array("errors" => array_values($errors)));
    }
?>