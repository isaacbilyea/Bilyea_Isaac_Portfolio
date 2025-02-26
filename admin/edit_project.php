<?php
require_once('../includes/connect.php');

// Define valid sections for images
$sections = ['overview', 'problems', 'research', 'process', 'finalproduct'];

// Handle multiple image uploads
foreach($sections as $section) {
    if(isset($_FILES[$section.'_img']) && $_FILES[$section.'_img']['error'] == 0) {
        $random = rand(10000,99999);
        $newname = 'image'.$random;
        
        $filetype = strtolower(pathinfo($_FILES[$section.'_img']['name'], PATHINFO_EXTENSION));
        
        if($filetype == 'jpeg') {
            $filetype = 'jpg';
        }
        
        // Validate file type
        $allowed_types = ['jpg', 'jpeg', 'png', 'gif'];
        if(!in_array($filetype, $allowed_types)) {
            continue; // Skip invalid file types
        }
        
        // Create filename with section identifier
        $newname .= '-'.$section.'.'.$filetype;
        $target_file = '../images/'.$newname;
        
        if(move_uploaded_file($_FILES[$section.'_img']['tmp_name'], $target_file)) {
            // Store the filename in media_files table
            $media_query = "INSERT INTO media_files (filename, alt, project_id) 
                           VALUES (?, ?, ?)";
            $media_stmt = $connect->prepare($media_query);
            $media_stmt->bindParam(1, $newname, PDO::PARAM_STR);
            $media_stmt->bindParam(2, $_POST['title'], PDO::PARAM_STR);
            $media_stmt->bindParam(3, $_POST['pk'], PDO::PARAM_INT);
            $media_stmt->execute();
        }
    }
}

// Update project details
$query = "UPDATE projects SET 
          title = ?, cover_image = ?, description = ?, colour = ?, 
          overview = ?, summary = ?, problems = ?, research = ?, 
          process = ?, final_product = ?, reflection = ?, link = ? 
          WHERE id = ?";

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
$stmt = null;

header('Location: project_list.php');
?>