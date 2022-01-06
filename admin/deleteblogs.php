<?php
include_once 'includes/config.php';
include_once 'includes/session.php';

$sql = "DELETE FROM blog WHERE id='" . $_GET["id"] . "'";
if (mysqli_query($con, $sql)) {
    echo "<script>window.location.href='blogs.php';</script>";
} else {
    echo "<script>window.location.href='blogs.php';</script>";
}
mysqli_close($conn);
?>