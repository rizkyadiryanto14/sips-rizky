<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Tambah Timeline') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-6">
                <div class="card-title">Tambah Timeline</div>
            </div>
        </div>
        <div class="card-body">
            <span class="text-danger">*</span> Harus Diisi
            <form id="registrasi" style="margin-top: 10px;" onsubmit="loadingBtn()">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Foto Mahasiswa</label>
                            <div class="custom-file pilih-foto">
                                <input type="file" accept="image/*" class="custom-file-input">
                                <label class="custom-file-label"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="card shadow p-3 text-center" style="height: 300px">
                                <input type="hidden" name="foto">
                                <img src="<?= base_url() ?>cdn/img/mahasiswa/default.png" class="foto foto-fluid">
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="text-right">
                    <button class="btn btn-warning" type="reset">Reset</button>
                    <button type="submit" class="btn btn-default btn-act">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
</div>

<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<script src="<?= base_url() ?>cdn/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>cdn/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>

<script src="<?= base_url() ?>cdn/plugins/canvas-resize/jquery.canvasResize.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/jquery.exif.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/canvasResize.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/exif.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/binaryajax.js"></script>
<script src="<?= base_url() ?>cdn/plugins/canvas-resize/zepto.min.js"></script>
<script>
    function loadingBtn() {
        $(".btn-act").attr('disabled', true).html('Loading...')
    }


    // $(document).on('change', '.pilih-foto [type=file]', function(e) {
    //     canvasResize(this.files[0], {
    //         height: 500,
    //         width: 500,
    //         crop: true,
    //         rotate: 0,
    //         quality: 200,
    //         callback: function(data) {
    //             $('img.foto').attr('src', data);
    //             $('[name=foto]').val(data);
    //         }
    //     })
    // })
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>