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
    $tbody =  "<tr><td colspan='5'><center>No Data Available </center></td></tr>";
}};
$sql = "SELECT * FROM media WHERE publisher_name='$p_name'";
if($result = mysqli_query($connect, $sql)){
  $inst='';
    if(mysqli_num_rows($result) > 0){
      while($row = mysqli_fetch_array($result)){
            $inst .= "<tr>
            <td>" .$row['id']."</td>
            <td><img class='img-thumbnail' src='pictures/" .$row['picture']."'</td>
            <td>" .$row['title']."</td>
            <td>" .$row['m_type']."</td>
            
            <td>" .$row['m_status']."</td>
            
            
            </tr>";
        }
       
    } else{
         $tbody =  "<tr><td colspan='5'><center>No Data Available </center></td></tr>";
    }
} 

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>details</title>
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
                text-align: center;
                vertical-align: middle;
            }
            tr {
                text-align: center;
            }
        </style>
        <link rel="stylesheet" href="./my_files/moj.css">
        <script src="./index.js" defer></script>
   
 
  </head>

<body style="font-family:serif "   class=" home  text-white text-center">

<nav >
 
       <table   id="primary-navigation"
          data-visible="false"
          class="table primary-navigation ">
                <thead class='table-success'>
                    <tr>
                        <th>More From This Publisher</th>
                    </tr>
                    <tr>
                        
                        <th>ID</th>
                        <th>Picture</th>
                        <th>Title</th>
                        <th>Type</th>
                        <th>Status</th>
                       
                        
                    </tr>
                </thead>
                <tbody class=' text-white'>
                    <?= $inst;?>
                </tbody>
            </table>
      </nav>
  <div class="d-grid">    
    <div class="ms-md-5  d-flex">
      <div style="width: 10%; height:400px;  " class=" container" >
        <a style="position: absolute;
top: 20%; left: 10%; 
transform: translate(0, -100%);" href=<?php echo 'update.php?id=' .$id?>><button style="padding: 1rem; width: 300px;" class='btn btn-primary btn-sm' type='button'>Edit</button></a>
         <a href='./index.php'><button style="margin-top:1rem;" class="btn tg btn-warning" type='button'>Home</button></a>
      </div>       
      <div style="width: 40%; height:400px" class=" text-white container" > 
        

        <h3><?php echo $type ?></h3>

        <h1 class="text-danger"><?php echo $title ?></h1>
      
        <img class="img-tumbnail" src="<?php echo 'pictures/' .$picture ?>" alt="">
      </div>
      <div style="width: 10%; height:400px " class=" container " >
<a style="position: absolute;
top: 20%; right: 10%;
transform: translate(0, -100%);" class="" href=<?php echo 'delete.php?id=' .$id?>><button style="padding: 1rem; width: 300px;" class='btn btn-danger btn-sm' type='button'>Delete</button></a></td>
      
    </div>
  </div>
    <div class="d-flex " >
      <div style="width: 45%; height:800px"  class=" container">
      <h2 class="my-md-5"><?php echo 'Genre - '. $genre ?></h2>
      
      
      <h2 class="my-md-5"><?php echo 'Author - '. $a_fname . $a_lname ?></h2>
      <h2 class="mobile-nav-toggle" aria-controls="primary-navigation">Published By  <br> <a href="#"><?php echo   $p_name   ?></a></h2>
      
      <h4><?php echo  $p_address  ?></h4>
      
      
      
      <h2 class="my-md-5 text-white"><?php echo 'Published - '. $p_date  ?></h2>
      <h2 class="my-md-5"><?php echo 'Status - '. $status  ?></h2>
    </div>
    <div style="width: 45%; height:800px"  class=" container">
      <h2 class="my-md-5">Description</h2>
      <p style="font-size: 2rem;" class="my-md-5 " ><?php echo $desc  ?></p>
      
    </div>
  </div>
</div>

    </body>
</html>