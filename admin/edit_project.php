<?php
require_once('../includes/connect.php');
$query = "UPDATE projects SET title = ?,cover_image = ?,description= ?, colour = ?, overview = ?, summary = ?, problems = ?, research = ?, process = ?, final_product = ?, reflection = ?, link = ? WHERE id = ?";

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
