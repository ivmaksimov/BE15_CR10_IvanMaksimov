<?php 
require_once 'actions/db_connect.php';

$sql = "SELECT * FROM media";
$result = mysqli_query($connect ,$sql);
$tbody=''; //this variable will hold the body for the table
if(mysqli_num_rows($result)  > 0) {     
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){         
        $tbody .= "<tr>
            <td>" .$row['id']."</td>
            <td><img class='img-thumbnail' src='pictures/" .$row['picture']."'</td>
            <td>" .$row['title']."</td>
            <td>" .$row['m_type']."</td>
            
            <td><a href='details.php?id=" .$row['id']. "'><button class='btn btn-success btn-sm' type='button'>Show Media</button></a></td>
            
            </tr>";
    }
} else {
    $tbody =  "<tr><td colspan='5'><center>No Data Available </center></td></tr>";
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
    <body   class="bg-black">
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