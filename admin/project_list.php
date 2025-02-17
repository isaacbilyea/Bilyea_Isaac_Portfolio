<!DOCTYPE html>
<html lang="en">

<?php

session_start();
if(!isset($_SESSION['username'])) {
  header('Location: login_form.php');
}

require_once('../includes/connect.php');
$stmt = $connect->prepare('SELECT id,title,cover_image FROM projects ORDER BY id ASC');
$stmt->execute();
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CMS Main Page</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">
</head>
<body>

<div id="cms-main">
  <div id="edit-project">
    <h3>Edit an Existing Project</h3>
    <?php

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

      echo '<div class="project-item">
      <img src="../images/'.$row['cover_image'].'" alt="'.$row['title'].'" class="project-thumbnail">
      <div class="project-info">
        <p class="project-title">'.$row['title'].'</p>
        <div class="project-actions">
          <a href="edit_project_form.php?id='.$row['id'].'" class="edit-btn">Edit</a>
          <a href="delete_project.php?id='.$row['id'].'" class="delete-btn">Delete</a>
        </div>
      </div>
    </div>';
    }

    $stmt = null;

    ?>
  </div>

  <div id="add-project">
    <h3>Add a New Project</h3>
    <form action="add_project.php" method="post" enctype="multipart/form-data">
        <label for="title">Project Title: </label>
        <input name="title" type="text" required><br><br>
        <label for="img">Project Image: </label>
        <input name="img" type="file" required><br><br>
        <label for="desc">Project Description: </label>
        <textarea name="desc" required></textarea><br><br>
        <input name="submit" type="submit" value="Add">
    </form>
  </div>
  <a id="log-out" href="logout.php">Log Out</a>
</div>
</body>
</html>
