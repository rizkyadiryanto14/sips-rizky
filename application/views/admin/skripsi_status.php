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
            <div class="form-group">
                <label for="">Jam Selesai</label>
                <input type="time" name="jam_selesai" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Nama Dosen Penguji 1</label>
                <select name="dosen_penguji_id" class="form-control" id="">
                    <option value=""> -pilih Dosen Penguji 1- </option>
                </select>
            </div>
            <div class="form-group">
                <label for="">Nama Dosen Penguji 2</label>
                <select name="dosen_penguji2_id" class="form-control" id="">
                    <option value=""> -pilih dosen penguji 2- </option>
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
<?php if ($this->session->flashdata('error-jadwal')) { ?>
<script>
let mess = "<?= $this->session->flashdata('error-jadwal'); ?>"
notif(mess, 'error', true)
</script>
<?php } ?>

<script>
$(document).ready(function(res) {
    call('api/dosen').done(function(res) {
        dosen = '<option value="">- Pilih Dosen penguji -</option>';
        if (res.data) {
            res.data.forEach(obj => {
                dosen += '<option value="' + obj.nama + '">' + obj.nama + '</option>';
            })
        }
        $('[name=dosen_penguji_id]').html(dosen);
        $('[name=dosen_penguji2_id').html(dosen);
    })
})
</script>

<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>