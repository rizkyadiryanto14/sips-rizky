<?php

use PhpParser\Node\Stmt\Echo_;

$this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Daftar Judul') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col">
                    <div class="card-title">Daftar Judul</div>
                </div>
                <div class="col text-right">
                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambahdata">
                        <i class="fa fa-plus"></i>
                        Tambah
                    </button>
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
                            <td><?php echo $daftar->abstrak ?></td>
                            <td><?php echo $daftar->tahun_lulus ?></td>
                        </tr>
                        <?php } ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="modal fade" id="tambahdata">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="Daftar_judul/create" method="POST">
                    <div class="modal-header">
                        <div class="modal-title">Tambah Daftar Judul</div>
                    </div>

                    <div class="modal-body">
                        <label>Nim</label>
                        <input type="text" name="nim" class="form-control" placeholder="Masukan Nim" required>
                    </div>
                    <div class="modal-body">
                        <label>Nama</label>
                        <input type="text" name="nama" class="form-control" placeholder="Masukan Nama" required>
                    </div>
                    <div class="modal-body">
                        <label for="">Abstrak</label>
                        <input type="text" name="abstrak" class="form-control" placeholder="Masukan Abstrak" required>
                    </div>
                    <div class="modal-body">
                        <label for="">Tahun Lulus</label>
                        <input type="text" name="tahun_lulus" class="form-control" placeholder="Masukan Tahun Lulus"
                            required>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
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