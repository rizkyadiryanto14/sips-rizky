<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', "Jam") ?>

<?php $this->app->section() ?>

<div class="card">
    <div class="card-header">
        <button class="btn btn-primary" data-target="#tambahJadwal" data-toggle="modal">Tambah Data</button>
        <a href="<?= base_url('admin/cetakExcel') ?>" class="btn btn-warning">Import Excel</a>
    </div>

    <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Dosen</th>
                                <th>Jadwal Dosen</th>
                                <th>Ruangan</th>
                                <th>Nama MK</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($jadwal_dosen as $item) : ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $item->nama ?></td>
                                    <td><?= $item->jadwal ?></td>
                                    <td><?= $item->ruangan ?></td>
                                    <td><?= $item->nama_mk ?></td>
                                    <td>
                                        <button class="btn btn-warning btn-sm" data-target="#EditData<?= $item->id ?>" data-toggle="modal"><i class="fas fa-edit"></i></button>
                                        <button class="btn btn-danger btn-sm" data-target="#hapusData<?= $item->id ?>" data-toggle="modal"><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php foreach ($jadwal_dosen as $item) : ?>
    <div class="modal fade" id="hapusData<?= $item->id ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Warning</h3>
                </div>
                <form action="<?= base_url('admin/DeleteJadwal') ?>" method="POST">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="hidden" name="id" id="id" value="<?= $item->id ?>">
                            <span>Apakah anda yakin ingin menghapus data <?= $item->nama_dosen ?></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-warning" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary" type="submit">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach ?>

<?php foreach ($jadwal_dosen as $item) : ?>
    <div class="modal fade" id="EditData<?= $item->id ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Edit Data</h3>
                </div>
                <form action="<?= base_url('admin/EditJadwal') ?>" method="POST">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="">Nama Dosen</label>
                            <input type="hidden" name="id" id="id" value="<?= $item->id ?>">
                            <input type="text" name="nama" id="nama" class="form-control" value="<?= $item->nama ?>">
                        </div>
                        <div class="form-group">
                            <label for="">Jadwal</label>
                            <input type="text" name="jadwal" id="jadwal" class="form-control" value="<?= $item->jadwal ?>">
                        </div>
                        <div class="form-group">
                            <label for="">Ruangan</label>
                            <input type="text" name="ruangan" id="ruangan" class="form-control" value="<?= $item->ruangan ?>">
                        </div>
                        <div class="form-group">
                            <label for="">Nama MK</label>
                            <input type="text" name="nama_mk" id="nama_mk" class="form-control" value="<?= $item->nama_mk ?>">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-warning" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary" type="submit">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach  ?>

<div class="modal fade" id="tambahJadwal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Tambah Data Jadwal Dosen</h3>
            </div>
            <form action="<?= base_url('admin/tambahJadwal') ?>" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Nama Dosen</label>
                        <input type="text" name="nama" id="nama" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Jadwal Dosen</label>
                        <input type="text" name="jadwal" id="jadwal" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Ruangan</label>
                        <input type="text" name="ruangan" id="ruangan" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Nama MK</label>
                        <input type="text" name="nama_mk" id="nama_mk" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-warning" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary" type="submit">Simpan</button>
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