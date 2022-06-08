<?php
    $row = $db->get_row("SELECT * FROM tb_diagnosa WHERE kode_diagnosa='$_GET[ID]'"); 
?>
<div class="page-header">
    <h1>Detail Penyakit</h1>
</div>
    <div class="panel panel-primary">
        
        <div class="panel-body text-center">
            <h3>Penyakit</h3>
            <h2 class="text-primary"><?= $row->nama_diagnosa ?></h2>
            <h3>Detail Penyakit</h3>
            <p><?= enter_to_br($row->detail) ?></p>
            <h3>Solusi</h3>
            <p><?= enter_to_br($row->solusi) ?></p>
            <form action="simpan.php" method="post">
                <p>
                    <a class="btn btn-danger" href="?m=penyakit"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
                </p>
            </form>
        </div>
    </div>