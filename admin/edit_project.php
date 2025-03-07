<?php
require_once('../includes/connect.php');

$query = "UPDATE projects SET title = ?, cover_image = ?, description = ?, colour = ?, 
         overview = ?, summary = ?, problems = ?, research = ?, process = ?, 
         final_product = ?, reflection = ?, link = ? WHERE id = ?";

$stmt = $connect->prepare($query);

$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['thumb'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['desc'], PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['colour'], PDO::PARAM_STR);
$stmt->bindParam(5, $_POST['overview'], PDO::PARAM_STR);
$stmt->bindParam(6, $_POST['summary'], PDO::PARAM_STR);
$stmt->bindParam(7, $_POST['problems'], PDO::PARAM_STR);
$stmt->bindParam(8, $_POST['research'], PDO::PARAM_STR);
$stmt->bindParam(9, $_POST['process'], PDO::PARAM_STR);
$stmt->bindParam(10, $_POST['final_product'], PDO::PARAM_STR);
$stmt->bindParam(11, $_POST['reflection'], PDO::PARAM_STR);
$stmt->bindParam(12, $_POST['link'], PDO::PARAM_STR);
$stmt->bindParam(13, $_POST['pk'], PDO::PARAM_INT);

$stmt->execute();

$projectId = $_POST['pk'];

$random = rand(10000,99999); //generates a random number between 10000 and 99999
$newname = 'image'.$random; // will store something like 'image49814'

$mediaquery = "INSERT INTO media_files (project_id, filename, alt, type) VALUES (?, ?, ?, 'image')";
$mediastmt = $connect->prepare($mediaquery);
$mediastmt->bindParam(1, $projectId, PDO::PARAM_INT);
$mediastmt->bindParam(2, $newname, PDO::PARAM_STR);
$mediastmt->bindParam(3, $_POST['title'], PDO::PARAM_STR);
$mediastmt->execute();

$sections = ['overview', 'problems', 'research', 'process', 'finalproduct'];

foreach($sections as $section) {

    $inputName = $section . '_img';

    if(isset($_FILES[$inputName]) && $_FILES[$inputName]['size'] > 0) {
        // PHP can get the original file extension (without the '.'). It also makes sure the extension is lowercase, so 'JPG' becomes 'jpg'.
        $filetype = strtolower(pathinfo($_FILES[$inputName]['name'], PATHINFO_EXTENSION));
        
        //check to see if the extension is allowed, for example...
        if($filetype == 'jpeg') {
            $filetype = 'jpg'; // we want to save it as 'jpg', not 'jpeg'
        }

        if($filetype == 'exe') {
            exit('nice try'); // we don't want to save executable files
        }
        
        $filetype = 'png';
        
        $target_file = "../images/{$newname}-{$section}.{$filetype}";
        
        // IF and ONLY if the file is uploaded successfully, insert the data into the database
        move_uploaded_file($_FILES[$inputName]['tmp_name'], $target_file);
    }
}

header('Location: project_list.php');
?>