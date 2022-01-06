<?php
        include_once 'includes/config.php';
        include_once 'includes/session.php';
        
        if(isset($_REQUEST['del'])) {
             $id=$_GET['id'];
             $link = 'gallery/'.$_REQUEST['del'];
                
             if(unlink($link)) {
                mysqli_query($con, "DELETE  FROM gallery Where id={$id}") or die(mysqli_error($con));
                echo "<script>window.location.href='gallery.php';</script>";
        }

             else echo "Failed";
        }
?>