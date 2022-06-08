<?php
    $row = $db->get_row("SELECT * FROM tb_diagnosa WHERE kode_diagnosa='$_GET[ID]'"); 
?>
<div class="page-header">
    <h1>Detail Penyakit</h1>
</div>
    <div class="panel panel-primary">
        
        <div class="panel-body text-center">
            <h3>Diagnosa</h3>
            <h2 class="text-primary"><?= $row->nama_diagnosa ?></h2>
            <h3>Detail</h3>
            <p><?= enter_to_br($row->detail) ?></p>
            <h3>Solusi</h3>
            <p><?= enter_to_br($row->solusi) ?></p>
            <p>
                <a class="btn btn-danger" href="?m=konsultasi"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </p>
        </div>
    </div>
    