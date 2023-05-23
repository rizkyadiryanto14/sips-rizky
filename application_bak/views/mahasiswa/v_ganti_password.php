<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', "Change Password") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="card-title">Change Password</div>
    </div>
    <div class="card-body">
        <span class="text-danger">*</span> Harus Diisi
        <form id="registrasi" style="margin-top: 10px;" onsubmit="loadingBtn()">
            <div class="form-group">
                <label>Password <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="password" autocomplete="off"
                    placeholder="Masukkan Password">
                <?= form_error('password', '<small class="texzt-danger pl-3>", "</small>"') ?>
            </div>
            <div class="form-group">
                <label>New Password <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="new_password" autocomplete="off"
                    placeholder="Masukkan Password">
            </div>
            <div class="form-group">
                <label>Password (Konfirmasi) <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="password_konfirmasi" autocomplete="off"
                    placeholder="Masukkan Password (Konfirmasi)">
            </div>
            <hr>
            <div class="text-right">
                <button class="btn btn-warning" type="reset">Reset</button>
                <button type="submit" class="btn btn-default btn-act">Submit</button>
            </div>
        </form>
    </div>
</div>
<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
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

$(document).ready(function() {
    $("#nim").keyup(function() {
        if ($(this).val().length == 10) {
            var inp = $(this).val();
            if (/[0-9-_ ]/.test(inp)) {
                $(".btn-act").attr('disabled', false)
            } else {
                notif('Mohon masukkan dengan format yang benar, harus ada angka dan huruf', 'error',
                    true);
                $(".btn-act").attr('disabled', true)
            }
        } else {
            notif('Silahkan Masukkan 10 digit', 'info', true);
            $(".btn-act").attr('disabled', true)
        }
    })

    call('api/prodi').done(function(req) {
        prodi = '<option value="">- Pilih Prodi -</option>';
        if (req.data) {
            $.each(req.data, function(index, obj) {
                prodi += '<option value="' + obj.id + '">' + obj.nama + '</option>'
            })
        }
        $('[name=prodi_id]').html(prodi);
    })

    $(document).on('submit', 'form#registrasi', function(e) {
        e.preventDefault();
        if ($('form#registrasi [name=password]').val() == $(
                'form#registrasi [name=password_konfirmasi]').val()) {
            call('api/mahasiswa/create', $(this).serialize()).done(function(req) {
                if (req.error == true) {
                    notif(req.message, 'error', true);
                    $(".btn-act").attr('disabled', false).html('Submit')
                } else {
                    $('form#registrasi [name]').val('');
                    $('img.foto').attr('src', '');
                    notif(req.message, 'success');
                    $(".btn-act").attr('disabled', false).html('Submit')
                }
            })
        } else {
            notif('konfirmasi password harus sama', 'error', true);
            $(".btn-act").attr('disabled', false).html('Submit')
        }
    })

    $(document).on('change', '.pilih-foto [type=file]', function(e) {
        canvasResize(this.files[0], {
            height: 500,
            width: 500,
            crop: true,
            rotate: 0,
            quality: 200,
            callback: function(data) {
                $('img.foto').attr('src', data);
                $('[name=foto]').val(data);
            }
        })
    })

})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>