<?php
require_once 'db_connect.php';
require_once 'file_upload.php';

if ($_POST) {    
     $title = $_POST['title'];
    $genre = $_POST['genre'];
    $id = $_POST['id'];
    $type = $_POST['m_type'];
    $desc = $_POST['short_description'];
    $a_fname = $_POST['author_first_name'];
    $a_lname = $_POST['author_last_name'];
    $p_name = $_POST['publisher_name'];
    $p_address = $_POST['publisher_address'];
    $p_date = $_POST['publish_date'];
    $isbn = $_POST['ISBN'];
    $status = $_POST['m_status'];
    //variable for upload pictures errors is initialised
    $uploadError = '';

    $picture = file_upload($_FILES['picture']);//file_upload() called  
    if($picture->error===0){
        ($_POST["picture"]=="product.png")?: unlink("./pictures/$_POST[picture]");           
        $sql = "UPDATE media SET title = '$title', genre = '$genre', m_type = '$type', short_description = '$desc', author_first_name = '$a_fname', author_last_name = '$a_lname', publisher_name = '$p_name', publisher_address = '$p_address', publish_date = '$p_date', ISBN = $isbn, m_status = '$status',  picture = '$picture->fileName' WHERE id = {$id}";
    }else{
        $sql = "UPDATE media SET title = '$title', genre = '$genre', m_type = '$type', short_description = '$desc', author_first_name = '$a_fname', author_last_name = '$a_lname', publisher_name = '$p_name', publisher_address = '$p_address', publish_date = '$p_date', ISBN = $isbn, m_status = '$status' WHERE id = {$id}";
    }    
    if (mysqli_query($connect, $sql) === TRUE) {
        $class = "success";
        $message = "The record was successfully updated";
        $uploadError = ($picture->error !=0)? $picture->ErrorMessage :'';
    } else {
        $class = "danger";
        $message = "Error while updating record : <br>" . mysqli_connect_error();
        $uploadError = ($picture->error !=0)? $picture->ErrorMessage :'';
    }
    mysqli_close($connect);    
} else {
    header("location: ../error.php");
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Update</title>
        <?php require_once '../components/boot.php'?> 
    </head>
    <body class="bg-black text-white" >
        <div class="container">
            <div class="mt-3 mb-3">
                <h1>Update request response</h1>
            </div>
            <div class="alert alert-<?php echo $class;?>" role="alert">
                <p><?php echo ($message) ?? ''; ?></p>
                <p><?php echo ($uploadError) ?? ''; ?></p>
                <a href='../update.php?id=<?=$id;?>'><button class="btn btn-warning" type='button'>Back</button></a>
                <a href='../index.php'><button class="btn btn-success" type='button'>Home</button></a>
            </div>
        </div>
    </body>
</html>