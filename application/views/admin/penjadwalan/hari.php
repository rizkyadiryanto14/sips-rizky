<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', "Hari") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <button class="btn btn-primary" data-target="#tambahHari" data-toggle="modal">Tambah Data</button>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="text-center">
                                <th>No</th>
                                <th>Nama Hari</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($hari as $item) :  ?>
                                <tr class="text-center">
                                    <td><?= $no++ ?></td>
                                    <td><?= $item->nama_hari ?></td>
                                    <td>
                                        <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editHari<?= $item->id ?>"> <i class="fa fa-edit"></i>
                                        </button>
                                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusHari<?= $item->id ?>"><i class=" fa fa-trash"></i></button>
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


<?php foreach ($hari as $item) :  ?>
    <div class="modal fade" id="hapusHari<?= $item->id ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Edit Hari</h3>
                </div>
                <form action="<?= base_url('admin/HapusHari') ?>" method="POST">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="">Apakah Anda Yakin Ingin Menghapus Data Hari</label>
                            <input type="hidden" name="id" value="<?= $item->id ?>">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-warning" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary" type="submit">Hapus</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach ?>

<?php foreach ($hari as $item) :  ?>
    <div class="modal fade" id="editHari<?= $item->id ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Edit Hari</h3>
                </div>
                <form action="<?= base_url('admin/EditHari') ?>" method="POST">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="">Nama Hari</label>
                            <input type="hidden" name="id" value="<?= $item->id ?>">
                            <input type="text" name="nama_hari" id="hari" class="form-control">
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

<div class="modal fade" id="tambahHari">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Tambah Data Hari</h3>
            </div>
            <form action="<?= base_url('admin/TambahHari') ?>" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Nama Hari</label>
                        <input type="text" name="nama_hari" id="hari" class="form-control">
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