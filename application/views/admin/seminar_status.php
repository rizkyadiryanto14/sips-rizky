<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Update Seminar') ?>

<?php $this->app->section() ?>
<div class="card">
    <form id="edit" action="<?= base_url() ?>admin/seminar/updatestatus/<?= $seminar_id ?>" method="POST">
        <div class="card-header">
            <div class="card-title">Update Seminar</div>
        </div>
        <div class="card-body">
            <div class="form-group">
                <label for="">Tempat Seminar</label>
                <input type="text" name="tempat" id="" class="form-control" placeholder="Tempat A" required>
            </div>
            <div class="form-group">
                <label for="">Tanggal Seminar</label>
                <input type="date" name="tanggal" id="" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="">Jam Seminar</label>
                <input type="time" name="jam" id="" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="">Dosen Penguji</label>
                <select name="dosen_penguji_id" class="form-control" required>
                    <option value="">- Pilih Penguji -</option>
                </select>
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
<script>
$(document).ready(function(res) {
    call('api/dosen').done(function(res) {
        dosen = '<option value="">- Pilih Dosen -</option>';
        if (res.data) {
            res.data.forEach(obj => {
                dosen += '<option value="' + obj.id + '">' + obj.nama + '</option>';
            })
        }
        $('[name=dosen_penguji_id]').html(dosen);
    })
})
</script>

<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>