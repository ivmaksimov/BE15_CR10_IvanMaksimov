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
    $uploadError = '';
    //this function exists in the service file upload.
    $picture = file_upload($_FILES['picture']);  
   
    $sql = "INSERT INTO media (title, genre,  m_type, short_description, author_first_name, author_last_name, publisher_name, publisher_address, publish_date, ISBN, m_status, picture ) VALUES ('$title', '$genre', '$type', '$desc', '$a_fname', '$a_lname', '$p_name', '$p_address', $p_date, $isbn, '$status', '$picture->fileName')";

    if (mysqli_query($connect, $sql) === true) {
        $class = "success";
        $message = "The entry below was successfully created <br>
            <table class='table w-50'><tr>
            <td> $title </td>
            <td> $genre </td>
            <td> $type </td>
            <td> $desc </td>
            <td> $a_fname </td>
            <td> $a_lname </td>
            <td> $p_name </td>
            <td> $p_address </td>
            <td> $p_date </td>
            <td> $isbn </td>
            <td> $status </td>
            </tr></table><hr>";
        $uploadError = ($picture->error !=0)? $picture->ErrorMessage :'';
    } else {
        $class = "danger";
        $message = "Error while creating record. Try again: <br>" . $connect->error;
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
    <body class="bg-black text-white">
        <div class="container">
            <div class="mt-3 mb-3">
                <h1>Create request response</h1>
            </div>
            <div class="alert alert-<?=$class;?>" role="alert">
                <p><?php echo ($message) ?? ''; ?></p>
                <p><?php echo ($uploadError) ?? ''; ?></p>
                <a href='../index.php'><button class="btn btn-primary" type='button'>Home</button></a>
            </div>
        </div>
    </body>
</html>