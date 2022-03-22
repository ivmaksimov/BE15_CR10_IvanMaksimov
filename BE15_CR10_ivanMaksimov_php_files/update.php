<?php
require_once 'actions/db_connect.php';

if ($_GET['id']) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM media WHERE id = {$id}";
    $result = mysqli_query($connect, $sql);
    if (mysqli_num_rows($result) == 1) {
        $data = mysqli_fetch_assoc($result);
        $title = $data['title'];
        $genre = $data['genre'];
        $picture = $data['picture'];
        $type = $data['m_type'];
        $desc = $data['short_description'];
        $a_fname = $data['author_first_name'];
         $a_lname = $data['author_last_name'];
          $p_name = $data['publisher_name'];
           $p_date = $data['publish_date'];
           $p_address= $data['publisher_address'];
            $isbn = $data['ISBN'];
             $status = $data['m_status'];
      
    } else {
        header("location: error.php");
    }
    mysqli_close($connect);
} else {
    header("location: error.php");
}
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Edit</title>
        <?php require_once 'components/boot.php'?>
        <style type= "text/css">
            fieldset {
                margin: auto;
                margin-top: 100px;
                width: 60% ;
            }  
            .img-thumbnail{
                width: 70px !important;
                height: 70px !important;
            }     
        </style>
        <link rel="stylesheet" href="./my_files/moj.css">
    </head>
    <body class="home text-white">
        <fieldset>
            <legend class='h2'>Update request </legend>
            <h2 class="text-danger"><?php echo $title ?></h2>
            <form action="actions/a_update.php"  method="post" enctype="multipart/form-data">
                <table class="table text-white">
                    <tr>
                        <th>Title</th>
                        <td><input  class='form-control' type="text" name="title"  value="<?php echo $title ?>" /></td>
                    </tr>    
                    <tr>
                        <th>Genre</th>
                        <td><input class='form-control' type="text" name= "genre"  step="any" value="<?php echo $genre ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td><input class='form-control' type="text" name= "m_type"  value="<?php echo $type ?>" /></td>
                    </tr>
                    <tr>
                        <th>Short Descripton</th>
                        <td><input class='form-control' type="text" name="short_description" value="<?php echo $desc ?>" /></td>
                    </tr>
                    <tr>
                        <th>Image</th>
                        <td><input class='form-control' type="file" name="picture"  /></td>
                    </tr>    
                    <tr>
                        <th>Athor-First Name</th>
                        <td><input class='form-control' type="text" name= "author_first_name"  value="<?php echo $a_fname ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Athor-Last Name</th>
                        <td><input class='form-control' type="text" name="author_last_name" value="<?php echo $a_lname ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Publisher</th>
                        <td><input class='form-control' type="text" name="publisher_name"  value="<?php echo $p_name ?>" /></td>
                    </tr>
                    <tr>
                        <th>Publisher-Address</th>
                        <td><input class='form-control' type="text" name= "publisher_address"  value="<?php echo $p_address ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Publish Date</th>
                        <td><input class='form-control' type="date" name= "publish_date"  value="<?php echo $p_date ?>"  /></td>
                    </tr>
                    <tr>
                        <th>ISBN</th>
                        <td><input class='form-control' type="number" name= "ISBN"  value="<?php echo $isbn ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td><input class='form-control' type="text" name= "m_status"   value="<?php echo $status ?>" /></td>
                    </tr>
                    <tr>
                    <tr>
                        <input type= "hidden" name= "id" value= "<?php echo $data['id'] ?>" />
                        <input type= "hidden" name= "picture" value= "<?php echo $data['picture'] ?>" />
                        <td><button class="btn btn-success" type= "submit">Save Changes</button></td>
                        <td><a href= "index.php"><button class="btn btn-warning" type="button">Home</button></a></td>
                        
                    </tr>
                </table>
            </form>
            
        </fieldset>
        
    </body>
</html>