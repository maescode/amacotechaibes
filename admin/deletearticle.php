<?php
include_once 'includes/config.php';
include_once 'includes/session.php';

$sql = "DELETE FROM article WHERE id='" . $_GET["id"] . "'";
if (mysqli_query($con, $sql)) {
    echo "<script>window.location.href='article.php';</script>";
} else {
    echo "<script>window.location.href='article.php';</script>";
}
mysqli_close($conn);
?>