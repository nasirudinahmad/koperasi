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
                    <form class="col-md-4" action="prosesubah.php" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nama Lengkap</label>
                            <input value="<?php echo $row['nama']?>" type="text" required name="nama" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">       
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">No Telpon</label>
                            <input value="<?php echo $row['no_tlp']?>" type="text" required name="no_tlp" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input value="<?php echo $row['email']?>" type="text" required name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Password</label>
                            <input type="text" name="password" class="form-control" aria-describedby="emailHelp">
                        </div>
                        
                        <button class="btn btn-primary" onclick="return confirm('Yakin Akan Merubah Data Profile Anda..!!!')" type="submit"><i class="fa fa-check-square"></i> Simpan</button>
                        <a href="profile.php" class="btn btn-secondary">Kembali</a>
                    </form>
                    
                        
                    </div>  
                </main>  
            </div>
        </div>

    </body>
</html>
