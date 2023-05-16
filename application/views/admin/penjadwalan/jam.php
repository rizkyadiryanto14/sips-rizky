<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', "Jam") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <button class="btn btn-primary" data-target="#tambahJam" data-toggle="modal">Tambah Data</button>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Kode</th>
                                <th>Range Jam</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; foreach($jam as $item ) :  ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $item->range_jam ?></td>
                                <td>
                                    <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editHari">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusHari">
                                        Hapus
                                        Data</button>
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


<div class="modal fade" id="tambahJam">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="card-title">Tambah Data Ruangan</h3>
            </div>
            <form action="<?= base_url('admin/Tambahjam') ?>" method="POST">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Range Jam</label>
                        <input type="text" name="range_jam" id="range_jam" class="form-control">
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