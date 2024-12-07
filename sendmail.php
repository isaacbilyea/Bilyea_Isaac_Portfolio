<?php

require_once('includes/connect.php');

///gather the form content
$name = $_POST['name'];
$email = $_POST['email'];
$msg = $_POST['message'];

$errors = [];

//validate and clean these values

$name = trim($name);
$email = trim($email);
$msg = trim($msg);

if(empty($name)) {
    $errors['name'] = 'Name input is required. You wouldn’t leave a title tag blank, would you?';
}

if(empty($msg)) {
    $errors['message'] = 'A blank message? Bold strategy. Let’s see if it works out.';
}

if(empty($email)) {
    $errors['email'] = 'An email address is kind of important. Unless you want me to send your message via carrier pigeon?';
} else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['legit_email'] = 'Invalid email format. Did you miss a closing tag?';
}

if(empty($errors)) {

    //insert these values as a new row in the contacts table

    $query = "INSERT INTO contacts (name, email, message) VALUES('$name','$email','$msg')";

    if(mysqli_query($connect, $query)) {

        //format and send these values in an email

        $to = 'isaacbilyea@gmail.com';
        $subject = 'Message from your Portfolio site!';

        $message = "You have received a new contact form submission:\n\n";
        $message .= "Name: ".$name."\n";
        $message .= "Email: ".$email."\n\n";
        $message .= $msg;

        mail($to,$subject,$message);

        header('Location: contact.php?submitted=true');

    }

} else {
    //The for loop wasn't working since $errors is an associative array because we assigned it keys above. So I used a foreach loop instead.
    foreach($errors as $error) { 
        echo $error.'<br>';
    }
}

?>