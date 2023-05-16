<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', "Ruangan") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <button class="btn btn-primary" data-target="#tambahRuangan" data-toggle="modal">Tambah Data</button>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Ruangan</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; foreach($ruangan as $item ) :  ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $item->nama_ruangan ?></td>
                                <td>
                                    <button class="btn btn-warning btn-sm" type="button" data-toggle="modal"
                                        data-target="#EditRuangan<?= $item->id ?>"><i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-danger btn-sm" data-toggle="modal"
                                        data-target="#HapusRuangan<?= $item->id ?>"><i
                                            class="fas fa-trash"></i></button>
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

<?php foreach($ruangan as $item)  : ?>
<div class="modal fade" id="HapusRuangan<?= $item->id ?>">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="card-title">Warning !!!</h3>
            </div>
            <form action="<?= base_url('admin/HapusRuangan') ?>" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Apakah Anda Yakin ingin menghapus data ruangan
                            <b><?= $item->nama_ruangan ?></b></label>
                        <input type="hidden" name="id" id="id" value="<?= $item->id ?>">
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

<?php foreach($ruangan as $item)  : ?>
<div class="modal fade" id="EditRuangan<?= $item->id ?>">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="card-title">Edit Ruangan</h3>
            </div>
            <form action="<?= base_url('admin/EditRuangan') ?>" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Nama Ruangan</label>
                        <input type="hidden" name="id" id="id" value="<?= $item->id ?>">
                        <input type="text" name="nama_ruangan" id="ruangan" value="<?= $item->nama_ruangan ?>"
                            class="form-control">
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

<div class="modal fade" id="tambahRuangan">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="card-title">Tambah Data Ruangan</h3>
            </div>
            <form action="<?= base_url('admin/tambahRuangan') ?>" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Nama Ruangan</label>
                        <input type="text" name="nama_ruangan" id="ruangan" class="form-control">
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