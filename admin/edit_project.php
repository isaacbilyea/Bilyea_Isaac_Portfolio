<?php
require_once('../includes/connect.php');

// First update the text content
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

// Generate a unique random number for each section
$random = rand(10000, 99999);
$baseFilename = 'image' . $random;

$stmt->execute();

// Get project ID for reference
$projectId = $_POST['pk'];

// Process each section image if uploaded
$sections = ['overview', 'problems', 'research', 'process', 'finalproduct'];

foreach($sections as $section) {
    $inputName = $section . '_img';
    
    // Check if file was uploaded
    if(isset($_FILES[$inputName]) && $_FILES[$inputName]['size'] > 0) {

        // Get file extension and make it lowercase
        $filetype = strtolower(pathinfo($_FILES[$inputName]['name'], PATHINFO_EXTENSION));
        
        if($filetype == 'jpeg') {
            $filetype = 'jpg';
        }
        
        if($filetype != 'jpg' && $filetype != 'png' && $filetype != 'gif' && $filetype != 'svg') {
            continue; // Skip invalid file types
        }
        
        // Always use png extension for consistency
        $filetype = 'png';
        
        // Set target file path
        $target_file = "../images/{$baseFilename}-{$section}.{$filetype}";
        
        // Move uploaded file to target destination
        if(move_uploaded_file($_FILES[$inputName]['tmp_name'], $target_file)) {
            // Update the media_files table with the new filename
            $query = "UPDATE media_files SET filename = ? WHERE project_id = ?";
            $stmt = $connect->prepare($query);
            
            if($stmt) {
                $stmt->bindParam(1, $baseFilename, PDO::PARAM_STR);
                $stmt->bindParam(2, $projectId, PDO::PARAM_INT);
                $stmt->execute();
            } else {
                // Log error
                error_log("Failed to prepare statement for section {$section}");
            }
        }
    }
}

header('Location: project_list.php');
?>