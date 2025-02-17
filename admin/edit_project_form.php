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
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Page</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">

</head>
<body>

<div id="edit-project-form">
  <div>
      <img src="../images/<?php echo $row['cover_image']?>" alt="<?php echo $row['title']?>" class="project-thumbnail">
      <form action="edit_project.php" method="POST">
      <input name="pk" type="hidden" value="<?php echo $row['id']; ?>">
          <label for="title">Project Title: </label>
          <input name="title" type="text" value="<?php echo $row['title']; ?>" required><br><br>
          <label for="thumb">Project Thumbnail: </label>
          <input name="thumb" type="text" required value="<?php echo $row['cover_image']; ?>"><br><br>
          <label for="desc">Project Description: </label>
          <textarea name="desc" required><?php echo $row['description']; ?></textarea><br><br>
          <input name="submit" type="submit" value="Edit">
      </form>
  </div>
</div>
<?php
$stmt = null;
?>
</body>
</html>
