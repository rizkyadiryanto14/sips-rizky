<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Update Skripsi') ?>

<?php $this->app->section() ?>
<div class="card">
    <form id="edit" action="<?= base_url() ?>admin/skripsi/updatestatus/<?= $skripsi_id ?>" method="POST">
        <div class="card-header">
            <div class="card-title">Update Seminar</div>
        </div>
        <div class="card-body">
            <div class="form-group">
                <label for="">Tempat Seminar</label>
                <input type="text" name="tempat" id="" class="form-control" placeholder="Tempat A" required>
            </div>
            <div class="form-group">
                <label>Jadwal Skripsi</label>
                <input name="jadwal_skripsi" type="text" class="form-control dateTime"
                    placeholder="Pilih Jadwal Skripsi" readonly>
            </div>
            <div class="form-group text-right">
                <input type="submit" class="btn btn-primary" valid="Update">
            </div>
        </div>
    </form>
</div>
<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>

<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>