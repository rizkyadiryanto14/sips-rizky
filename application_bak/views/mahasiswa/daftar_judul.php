<?php
$this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Daftar Judul') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col">
                    <div class="card-title">Daftar Judul</div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover" id="data-skripsi">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nim</th>
                            <th>Nama</th>
                            <th>Judul Skripsi</th>
                            <th>Abstrak</th>
                            <th>Tahun Lulus</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($daftar_judul as $daftar) {
                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $daftar->nim ?></td>
                            <td><?php echo $daftar->nama ?></td>
                            <td><?php echo $daftar->judul_skripsi ?></td>
                            <td><?php echo $daftar->abstrak ?></td>
                            <td><?php echo $daftar->tahun_lulus ?></td>
                        </tr>
                        <?php } ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <?php $this->app->endSection('content') ?>

    <?php $this->app->section() ?>
    <link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <script src="<?= base_url() ?>cdn/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url() ?>cdn/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <?php $this->app->endSection('script') ?>

    <?php $this->app->init() ?>