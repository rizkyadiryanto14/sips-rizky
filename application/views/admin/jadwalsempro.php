<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Jadwal Sempro') ?>

<?php $this->app->section() ?>

<div class="card">
    <div class="card-header">
        <div class="card-title">Hasil Jadwal Seminar Proposal</div>
        <div class="col text-right">
            <a href="<?= base_url('admin/GenerateSempro'); ?>" class="btn btn-primary">
                <i class="fa fa-clock"></i>
                Generate Jadwal
            </a>
        </div>
    </div>
    <div class="card-body">
        <form action="<?= base_url('admin/simpanJadwal') ?>" method="POST">
            <div class="table-responsive">
                <table class="table table-hover" id="example">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Hari</th>
                            <th>Jam</th>
                            <th>Ruang</th>
                            <th>Dosen Penguji</th>
                            <th>Dosen Penguji 2</th>
                            <th>Dosen Pembimbing</th>
                            <th>Mahasiswa</th>
                            <th>Proposal</th>

                        </tr>

                        <?php
                        $no = 1;
                        $hasil = $this->db->query("select * from jadwalsempro order by id_hari, id_jam asc")->result();
                        foreach ($hasil as $item) {
                            $proposal = $this->db->query("SELECT m.nama as mhs, p.judul as judul, d.nama as dosbing FROM proposal_mahasiswa p join dosen d on p.dosen_id=d.id  join mahasiswa m on p.mahasiswa_id=m.id where p.id='$item->id_sempro'")->row_array();
                        ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $this->db->query("select nama_hari from hari where id='$item->id_hari'")->row()->nama_hari ?></td>
                                <td><?= $this->db->query("select range_jam from jam where id='$item->id_jam'")->row()->range_jam ?></td>
                                <td><?= $this->db->query("select nama_ruangan from ruangan where id='$item->id_ruang'")->row()->nama_ruangan ?></td>
                                <td><?= $this->db->query("select nama from dosen where id='$item->id_dosen'")->row()->nama ?></td>
                                <td><?= $this->db->query("select nama from dosen where id='$item->id_dosen_2'")->row()->nama ?></td>
                                <td><?= $proposal['dosbing'] ?></td>
                                <td><?= $proposal['mhs'] ?></th>
                                <td><?= $proposal['judul'] ?></td>


                            </tr>

                        <?php } ?>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
            <div class="text-right pt-4">
                <button class="btn btn-primary btn-block" type="submit">Simpan Jadwal</button>
            </div>
        </form>
    </div>
</div>

<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<script src="<?= base_url() ?>cdn/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>cdn/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#example').DataTable();
    });
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>