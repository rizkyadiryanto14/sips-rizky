<?php $this->app->extend('template/dosen') ?>

<?php $this->app->setVar('title', 'Tanda Tangan') ?>

<?php $this->app->section() ?>
<div class="card">
    <form id="edit" action="<?= base_url() ?>dosen/seminar/update_tandatangan/<?= $seminar_id ?>" method="POST"
        enctype="multipart/form-data">
        <div class="card-header">
            <div class="card-title">
                <div class="alert alert-info">Data tanda tangan anda akan dimasukan secara otomatis kedalam berita acara
                    dengan rules di setujui oleh sekretaris program studi</div>
            </div>
        </div>
        <div class="card-body">
            <div class="form-group">
                <div class="alert alert-warning">Keterangan :<br> Type file jpg atau png</div>
                <label for="">Uploud Tanda Tangan</label>
                <input type="file" name="tandatangan" class="form-control">
            </div>

            <div class="form-group text-right">
                <input type="submit" class="btn btn-primary" valid="Update">
            </div>
        </div>
    </form>
</div>
<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<script src="<?= base_url() ?>cdn/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>cdn/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>

<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>