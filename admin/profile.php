<?php
require "cek.php";
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="shortcut icon" href="../img/logo.png">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin</title>
    </head>
    <body class="sb-nav-fixed">
        <?php
            include_once "menu-navbar.php";
        ?>
        <div id="layoutSidenav">
            <?php
                include_once "menu-sidebar.php";
            ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <ol class="breadcrumb mt-2 mb-4">
                            <li class="breadcrumb-item active">Profile</li>
                        </ol>
                    <?php
                        $id = $_SESSION['id'];
                        $conn= open_db();
                        $sql="SELECT * FROM user WHERE id='$id'";
                        $data=mysqli_query($conn,$sql);
                        $row = mysqli_fetch_assoc($data);
                        
                    ?>
                    <form class="col-md-4">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nama Lengkap</label>
                            <input value="<?php echo $row['nama']?>" type="email" class="form-control" disabled id="exampleInputEmail1" aria-describedby="emailHelp">       
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">No Telpon</label>
                            <input value="<?php echo $row['no_tlp']?>" type="email" class="form-control" disabled id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input value="<?php echo $row['email']?>" type="email" class="form-control" disabled id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Password</label>
                            <input value="<?php echo $row['nama']?>" type="password" class="form-control" disabled id="exampleInputEmail1" aria-describedby="emailHelp">       
                        </div>
                        
                        <a class="btn btn-primary"href="prosesubahpassword.php"><i class="fa fa-edit"></i> Ubah</a>
                    </form>
                    
                        
                    </div>  
                </main>  
            </div>
        </div>

        

    </body>
</html>
