<form class="col-md-4" action="" method="GET">
                        <div>
                            <label for="">Pilih ID Pinjaman</label>
                            <p>
                                <select name="id_pinjaman" id="id_pinjaman" class='form-control' onchange="this.form.submit()">
                                    <option value="">--pilih--</option>
                                    <?php
                                    $conn= open_db();                            
                            
                                    $sql = $conn->query("select * from pinjaman where id_user=".$_SESSION['id']." and status='disetujui'");
                                    while ($data=$sql->fetch_assoc()){
                                        // $angsuran = $conn->query("SELECT * FROM `pinjaman` WHERE 1"); 
                                        // $data = $angsuran->fetch_assoc();
                                        
                                        // print_r($data);
                                        
                                        
                                        ?>
                                    <option value="<?= $data['id']?>"><?= $data['id'] . " - " . $data['tanggal']?></option>
                                    <?php 
                                    } ?>

                                </select>
                        </div>
                        </form>

22092023
$sql= $conn->query('SELECT *, COUNT( * ) AS sisa_lama_pinjaman FROM angsuran GROUP BY id_pinjaman and status='disetujui'') ;
    while ($data=$sql->fetch_assoc()){
        
    }

    23092023
    <tfoot>
                                <tr>
                            <th></th>
                            <th></th>
                            <th></th>
    <?php
                                $id_user = $_SESSION['id'];
                                $total2=0;
                                $conn= open_db();
                                $sql = $conn->query("select * from pinjaman where id_user='$id_user' and status='disetujui'");
                                while ($data=$sql->fetch_assoc()){
                                $data =(int)$data['lama_pinjaman'];
                                $total2+=(int)$data['pinjaman_anggota'];
                                $total3 = $total2 -$total1;
                                }
                            ?>
                            <th>Total Pinjaman</th>
                            <th><?=$data['lama_pinjaman']?>Bulan</th>

                            </tr>
                            <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th>Sisa Angsuran</th>
                            <th>Rp <?= number_format($total3,'0',',','.')?></th>

                            </tr>
                            </tfoot>