<?php 
require_once 'actions/db_connect.php';
if ($_GET['id']) {
    $id = $_GET['id'];
    
    
    
  }
  
$sql = "SELECT * FROM media WHERE genre='$id'";
if($result = mysqli_query($connect, $sql)){
    if(mysqli_num_rows($result) > 0){
        
      echo "<table >";
            echo "<tr class='text-white'>";
                echo "<th>id</th>";
                echo "<th>first_name</th>";
                echo "<th>last_name</th>";
                echo "<th>email</th>";
                
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr class='text-white'>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['title'] . "</td>";
                echo "<td>" . $row['author_first_name'] . "</td>";
                echo "<td>" . $row['author_last_name'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
mysqli_close($connect);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>The Library</title>
        <?php require_once 'components/boot.php'?>
        <style type="text/css">
            .manageProduct {           
                margin: auto;
            }
            .img-thumbnail {
                width: 70px !important;
                height: 70px !important;
            }
            td {          
                text-align: left;
                vertical-align: middle;
            }
            tr {
                text-align: center;
            }
        </style>
    </head>
    <body   class="bg-black text-white">
        <div class="manageProduct  text-danger w-75 mt-3">    
            <div class='mb-3'>
                <a  href= "create.php"><button style="padding: 1rem; width: 300px;" class='btn btn-primary'type="button" >Add New</button></a>
            </div>

            <p class='h2'>Media</p>
            <table class='table '>
                <thead class='table-success'>
                    <tr  >
                        
                        <th>ID</th>
                        <th>Picture</th>
                        <th>Title</th>
                        <th>Type</th>
                        
                        <th>More Info</th>
                        
                    </tr>
                </thead>
                <tbody class=' text-white'>
                    <?= $tbody;?>
                </tbody>
            </table>
        </div>
    </body>
</html>