<?php
require_once('../includes/connect.php');

// First update the text content
$query = "UPDATE projects SET title = ?, cover_image = ?, description= ?, colour = ?, overview = ?, summary = ?, problems = ?, research = ?, process = ?, final_product = ?, reflection = ?, link = ? WHERE id = ?";

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

// Get project info to use for image naming - using the correct project ID
$projectId = $_POST['pk'];
$query = "SELECT filename FROM media_files WHERE project_id = ?";
$stmt = $connect->prepare($query);
$stmt->bindParam(1, $projectId, PDO::PARAM_INT);
$stmt->execute();
$fileInfo = $stmt->fetch(PDO::FETCH_ASSOC);

// If no filename exists for this project, create one
if (!$fileInfo) {
    // Create a base filename for new projects
    $baseFilename = 'project_' . $projectId;
    
    // Insert record into media_files table
    $query = "INSERT INTO media_files (project_id, filename, type, alt) VALUES (?, ?, 'image', ?)";
    $stmt = $connect->prepare($query);
    $stmt->bindParam(1, $projectId, PDO::PARAM_INT);
    $stmt->bindParam(2, $baseFilename, PDO::PARAM_STR);
    $stmt->bindParam(3, $_POST['title'], PDO::PARAM_STR);
    $stmt->execute();
} else {
    $baseFilename = $fileInfo['filename'];
}

// Process each section image if uploaded
$sections = ['overview', 'problems', 'research', 'process', 'finalproduct'];

foreach($sections as $section) {
    $inputName = $section.'_img';
    
    // Check if file was uploaded
    if(isset($_FILES[$inputName]) && $_FILES[$inputName]['size'] > 0) {
        // Get file details
        $filetype = strtolower(pathinfo($_FILES[$inputName]['name'], PATHINFO_EXTENSION));
        
        // Validate file type
        if($filetype == 'jpeg') {
            $filetype = 'jpg';
        }
        
        // Only allow certain file types
        $allowed_types = ['jpg', 'jpeg', 'png', 'gif'];
        if(!in_array($filetype, $allowed_types)) {
            continue; // Skip invalid files
        }
        
        // Create the original high-quality file
        $target_file = "../images/{$baseFilename}-{$section}.{$filetype}";
        
        // Move uploaded file
        if(move_uploaded_file($_FILES[$inputName]['tmp_name'], $target_file)) {
            // Create different sized versions for responsive images
            $sizes = [300, 450, 600, 800, 1000];
            
            // Load source image
            if ($filetype == 'jpg' || $filetype == 'jpeg') {
                $source = imagecreatefromjpeg($target_file);
            } elseif ($filetype == 'png') {
                $source = imagecreatefrompng($target_file);
            } elseif ($filetype == 'gif') {
                $source = imagecreatefromgif($target_file);
            }
            
            if ($source) {
                $width = imagesx($source);
                $height = imagesy($source);
                
                foreach($sizes as $size) {
                    // Skip if source is smaller than target size
                    if($width < $size) continue;
                    
                    // Calculate new height to maintain aspect ratio
                    $new_height = floor($height * ($size / $width));
                    
                    // Create a new image with the new dimensions
                    $destination = imagecreatetruecolor($size, $new_height);
                    
                    // For PNG, preserve transparency
                    if($filetype == 'png') {
                        imagealphablending($destination, false);
                        imagesavealpha($destination, true);
                        $transparent = imagecolorallocatealpha($destination, 255, 255, 255, 127);
                        imagefilledrectangle($destination, 0, 0, $size, $new_height, $transparent);
                    }
                    
                    // Copy and resize the source image to the destination image
                    imagecopyresampled($destination, $source, 0, 0, 0, 0, $size, $new_height, $width, $height);
                    
                    // Save the resized image
                    $resized_file = "../images/{$baseFilename}-{$section}_{$size}.png";
                    imagepng($destination, $resized_file);
                    
                    // Clean up
                    imagedestroy($destination);
                }
                
                imagedestroy($source);
            }
        }
    }
}

header('Location: project_list.php');
?>