<!DOCTYPE html>
<html lang="en">
<?php

session_start();
if(!isset($_SESSION['username'])) {
  header('Location: login_form.php');
}

require_once('../includes/connect.php');
$query = 'SELECT * FROM projects WHERE projects.id = :projectId';
$stmt = $connect->prepare($query);
$projectId = $_GET['id'];
$stmt->bindParam(':projectId', $projectId, PDO::PARAM_INT);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);

$mediaQuery = 'SELECT filename, type, alt FROM media_files WHERE project_id = :projectId';
$mediaStmt = $connect->prepare($mediaQuery);
$mediaStmt->bindParam(':projectId', $projectId, PDO::PARAM_INT);
$mediaStmt->execute();
$mediaFiles = $mediaStmt->fetchAll(PDO::FETCH_ASSOC);

?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Project</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">
    <script src="https://cdn.tiny.cloud/1/zx6qk7ta8vs8xv4q6994p5e7rb4fxqh2zdefqs6j6k1ydmug/tinymce/7/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
tinymce.init({
    selector: '.textarea',
    plugins: [
    'anchor', 'autolink', 'charmap', 'codesample', 'emoticons', 'image', 'link', 'lists', 'media', 
    'searchreplace', 'table', 'visualblocks', 'wordcount',
],
    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
    setup: function(editor) {
        editor.on('change', function() {
            tinymce.triggerSave();
        });
    },
    init_instance_callback: function(editor) {
        editor.on('submit', function(e) {
            if (editor.getContent().trim() === '') {
                e.preventDefault();
                alert('Please fill in all required fields');
            }
        });
    }
});
    </script>
    <script>
function validateForm() {
    let editors = tinymce.editors;
    for(let editor of editors) {
        if(editor.getContent().trim() === '') {
            alert('Please fill in all required fields');
            return false;
        }
    }
    return true;
}
</script>

</head>
<body>

<div id="edit-project-form">
  <div id="edit-project-con">
        <img src="../images/<?php echo $row['cover_image']?>" alt="<?php echo $row['title']?>" class="project-thumbnail">
        <form action="edit_project.php" method="POST" enctype="multipart/form-data" onsubmit="return validateForm()">
            <input name="pk" type="hidden" value="<?php echo $row['id']; ?>">

            <label for="title">Project Title: </label>
            <input name="title" type="text" value="<?php echo $row['title']; ?>" required><br><br>

            <label for="thumb">Project Thumbnail: </label>
            <input name="thumb" type="text" required value="<?php echo $row['cover_image']; ?>"><br><br>

            <label for="desc">Project Description: </label>
            <textarea name="desc" required><?php echo $row['description']; ?></textarea><br><br>

            <label for="colour">Project Colour: </label>
            <input name="colour" type="text" required value="<?php echo $row['colour']; ?>">

            <h3>Case Study Content</h3>

            <label for="overview">Project Overview: </label><br><br>
            <label for="overview_img">Overview Image: </label>
            <input name="overview_img" type="file"><br><br>
            <textarea class="textarea" name="overview"><?php echo $row['overview']; ?></textarea><br><br>

            <label for="summary">Project Summary: </label><br><br>
            <textarea class="textarea" name="summary"><?php echo $row['summary']; ?></textarea><br><br>

            <label for="problems">Project Problems: </label><br><br>
            <label for="problems_img">Problems Image: </label>
            <input name="problems_img" type="file"><br><br>
            <textarea class="textarea" name="problems"><?php echo $row['problems']; ?></textarea><br><br>

            <label for="resarch">Project Research: </label><br><br>
            <label for="research_img">Research Image: </label>
            <input name="research_img" type="file"><br><br>
            <textarea class="textarea" name="research"><?php echo $row['research']; ?></textarea><br><br>

            <label for="process">Project Process: </label><br><br>
            <label for="process_img">Process Image: </label>
            <input name="process_img" type="file"><br><br>
            <textarea class="textarea" name="process"><?php echo $row['process']; ?></textarea><br><br>

            <label for="final_product">Project Final Product: </label><br><br>
            <label for="finalproduct_img">Final Product Image: </label>
            <input name="finalproduct_img" type="file"><br><br>
            <textarea class="textarea" name="final_product"><?php echo $row['final_product']; ?></textarea><br><br>
            
            <label for="reflection">Project Reflection: </label><br><br>
            <textarea class="textarea" name="reflection"><?php echo $row['reflection']; ?></textarea><br><br>

            <label for="link">Project Link: </label><br><br>
            <input name="link" type="text" value="<?php echo $row['link']; ?>"><br><br>

            <input name="submit" type="submit" value="Save">
        </form>
  </div>
</div>
<?php
$stmt = null;
?>
</body>
</html>
