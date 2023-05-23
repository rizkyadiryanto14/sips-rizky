<?php $this->app->extend('template/dosen') ?>

<?php $this->app->setVar('title', 'Tanda Tangan') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="card-title">
            <div class="alert alert-info">Data tanda tangan anda akan dimasukan secara otomatis kedalam berita acara
                dengan rules di setujui oleh sekretaris program studi</div>
            <div class="alert alert-danger">Data tanda tangan tanpa bac</div>
        </div>
    </div>
    <form id="edit">
        <div class="card-body">
            <div class="form-group">
                <label>Foto Mahasiswa</label>
                <div class="custom-file pilih-foto">
                    <input type="file" accept="image/*" name="pili-signature" class="custom-file-input">
                    <input type="hidden" name="signature">
                    <input type="hidden" name="def_signature">
                    <label class="custom-file-label"></label>
                </div>
            </div>
            <div class="form-group">
                <div class="card shadow p-3 text-center" style="height: 30%; width: 70%;">
                    <input type="hidden" name="signature">
                    <img src="<?= base_url() ?>cdn/img/mahasiswa/default.png" class="signature signature-fluid">
                </div>
            </div>

            <div class="form-group text-right">
                <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
        </div>
    </form>
</div>
<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<script src="<?= base_url() ?>cdn/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>cdn/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<!-- script untuk ajax -->
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/jquery.canvasResize.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/jquery.exif.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/canvasResize.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/exif.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/binaryajax.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/zepto.min.js"></script>


<script>
$(document).ready(function() {
    $(document).on('change', '.pilih-foto [type=file]', function(e) {
        canvasResize(this.files[0], {
            height: 500,
            width: 500,
            crop: true,
            rotate: 0,
            quality: 200,
            callback: function(data) {
                $('img.signature').attr('src', data);
                $('[name=signature]').val(data);
            }
        })
    })

})
</script>

<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>