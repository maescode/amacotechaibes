<?php
include_once 'includes/config.php';
include_once 'includes/session.php';

$sql = "DELETE FROM upcoming WHERE id='" . $_GET["id"] . "'";
if (mysqli_query($con, $sql)) {
    echo "<script>window.location.href='notice.php';</script>";
} else {
    echo "<script>window.location.href='notice.php';</script>";
}
mysqli_close($conn);
?>