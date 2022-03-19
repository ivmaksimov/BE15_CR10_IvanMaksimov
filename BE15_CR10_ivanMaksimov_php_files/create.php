<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php require_once 'components/boot.php'?>
        <title>PHP CRUD  |  Add Product</title>
        <style>
            fieldset {
                margin: auto;
                margin-top: 100px;
                width: 60% ;
            }       
        </style>
    </head>
    <body class="bg-black text-white">
        <fieldset>
            <legend class='h2'>Add Media</legend>
            <form action="actions/a_create.php" method= "post" enctype="multipart/form-data">
                <table class='table text-white '>
                    
                    <tr>
                        <th>Title</th>
                        <td><input class='form-control' type="text" name="title"  placeholder="Title" /></td>
                    </tr>    
                    <tr>
                        <th>Genre</th>
                        <td><input class='form-control' type="text" name= "genre" placeholder="Genre" step="any" /></td>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td><input class='form-control' type="text" name= "m_type" placeholder="Type" step="any" /></td>
                    </tr>
                    <tr>
                        <th>Short Descripton</th>
                        <td><input class='form-control' type="text" name="short_description" placeholder="Short Descripton" /></td>
                    </tr>
                    <tr>
                        <th>Image</th>
                        <td><input class='form-control' type="file" name="picture"   /></td>
                    </tr>    
                    <tr>
                        <th>Athor-First Name</th>
                        <td><input class='form-control' type="text" name= "author_first_name" placeholder="Name"  /></td>
                    </tr>
                    <tr>
                        <th>Athor-Last Name</th>
                        <td><input class='form-control' type="text" name="author_last_name" placeholder="Surname" /></td>
                    </tr>
                    <tr>
                        <th>Publisher</th>
                        <td><input class='form-control' type="text" name="publisher_name" placeholder="Name" /></td>
                    </tr>
                    <tr>
                        <th>Publisher-Address</th>
                        <td><input class='form-control' type="text" name= "publisher_address" placeholder="Address"   /></td>
                    </tr>
                    <tr>
                        <th>Publish Date</th>
                        <td><input class='form-control' type="number" name= "publish_date"   /></td>
                    </tr>
                    <tr>
                        <th>ISBN</th>
                        <td><input class='form-control' type="number" name= "ISBN" placeholder="ISBN"   /></td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td><input class='form-control' type="text" name= "m_status"  placeholder="Status" /></td>
                    </tr>
                    <tr>
                        <td><button class='btn btn-success' type="submit">Insert Media</button></td>
                        <td><a href="index.php"><button class='btn btn-warning' type="button">Home</button></a></td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </body>
</html>