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
    <title>Edit Project</title>
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
          <label for="colour">Project Colour: </label>
          <input name="colour" type="text" required value="<?php echo $row['colour']; ?>">
          <h3>Case Study Content</h3>
          <label for="overview">Project Overview: </label>
          <textarea name="overview" required><?php echo $row['overview']; ?></textarea><br><br>
          <label for="summary">Project Summary: </label>
          <textarea name="summary" required><?php echo $row['summary']; ?></textarea><br><br>
          <label for="problems">Project Problems: </label>
          <textarea name="problems" required><?php echo $row['problems']; ?></textarea><br><br>
          <label for="resarch">Project Research: </label>
          <textarea name="research" required><?php echo $row['research']; ?></textarea><br><br>
          <label for="process">Project Process: </label>
          <textarea name="process" required><?php echo $row['process']; ?></textarea><br><br>
          <label for="final_product">Project Final Product: </label>
          <textarea name="final_product" required><?php echo $row['final_product']; ?></textarea><br><br>
          <label for="reflection">Project Reflection: </label>
          <textarea name="reflection" required><?php echo $row['reflection']; ?></textarea><br><br>
          <label for="link">Project Link: </label>
          <input name="link" type="text" required value="<?php echo $row['link']; ?>"><br><br>
          <input name="submit" type="submit" value="Save">
      </form>
  </div>
</div>
<?php
$stmt = null;
?>
</body>
</html>
