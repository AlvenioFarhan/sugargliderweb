<div class="page-header">
    <h1>Daftar Penyakit</h1>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <form class="form-inline">
            <input type="hidden" name="m" value="diagnosa" />
            <div class="form-group">
                <input class="form-control" type="text" placeholder="Pencarian. . ." name="q" value="<?=$_GET['q']?>" />
            </div>
            <div class="form-group">
                <button class="btn btn-success"><span class="glyphicon glyphicon-refresh"></span> Refresh</button>
            </div>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr class="nw">
                    <th>No</th>
                    <th>Nama Penyakit</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <?php
            $q = esc_field($_GET['q']);
            $rows = $db->get_results("SELECT * FROM tb_diagnosa 
                WHERE kode_diagnosa LIKE '%$q%' OR nama_diagnosa LIKE '%$q%' OR detail LIKE '%$q%' 
                ORDER BY kode_diagnosa LIMIT 8");
            $no=0;
            
            foreach($rows as $row):?>
            <tr>
                <td><?=++$no ?></td>
                <td><?=$row->nama_diagnosa?></td>
                <td class="nw">
                    <a class="btn btn-xs btn-info" href="?m=penyakit_detail&ID=<?=$row->kode_diagnosa?>"><span class="glyphicon glyphicon-eye-open"></span> Lihat Detail</a>
                </td>
            </tr>
            <?php endforeach;?>
        </table>
    </div>
</div>