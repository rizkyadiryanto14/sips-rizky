<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Manage Users') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-6">
                <div class="card-title">Manage Users</div>
            </div>
            <div class="col-6 text-right">
                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambahdosen">
                    <i class="fa fa-plus"></i>
                    Tambah Dosen
                </button>

                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambahmahasiswa">
                    <i class="fa fa-plus"></i>
                    Tambah Mahasiswa
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="tambahdosen">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="tambahdosen">
                <div class="modal-header">
                    <div class="modal-title">Tambah Dosen</div>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>NIP</label><input type="text" class="form-control" name="nip" placeholder="Masukkan NIP"
                            autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label>Nama</label><input type="text" class="form-control" name="nama"
                            placeholder="Masukkan Nama" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label>Nomor Telepon</label><input type="text" class="form-control" name="nomor_telepon"
                            placeholder="Masukkan Nomor Telepon" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label>Email</label><input type="email" class="form-control" name="email"
                            placeholder="Masukkan Email" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label>Password</label><input type="password" class="form-control" name="password"
                            placeholder="Masukkan Email" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="level">Pilih Level Users</label>
                        <select name="level" id="level" class="form-control">
                            <option value="1">Admin</option>
                            <option value="2">Dosen</option>
                            <option value="4">Kaprodi</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="tambahmahasiswa">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <span class="text-danger">*</span> Harus Diisi
            <form id="registrasi" style="margin-top: 10px;" onsubmit="loadingBtn()">
                <div class="modal-header">
                    <div class="modal-title">Tambah Mahasiswa</div>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>NIM <span class="text-danger">*</span></label>
                                <input id="nim" type="text" name="nim" autocomplete="off" autofocus="true"
                                    class="form-control" placeholder="Masukkan NIM (Tanpa Titik)" maxlength="10">
                            </div>
                            <div class="form-group">
                                <label>Nama <span class="text-danger">*</span></label>
                                <input type="text" name="nama" autocomplete="off" class="form-control"
                                    placeholder="Masukkan Nama">
                            </div>
                            <div class="form-group">
                                <label>Prodi <span class="text-danger">*</span></label>
                                <select name="prodi_id" class="form-control">
                                    <option value="">- Pilih Prodi -</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Jenis Kelamin <span class="text-danger">*</span></label>
                                <select name="jenis_kelamin" class="form-control">
                                    <option value="">- Pilih Jenis Kelamin -</option>
                                    <option value="laki-laki">Laki-laki</option>
                                    <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tempat Lahir <span class="text-danger">*</span></label>
                                <input type="text" name="tempat_lahir" autocomplete="off" class="form-control"
                                    placeholder="Masukkan Tempat Lahir">
                            </div>

                            <div class="form-group">
                                <label>Tanggal Lahir <span class="text-danger">*</span></label>
                                <input type="date" name="tanggal_lahir" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Email <span class="text-danger">*</span></label>
                                <input type="text" name="email" autocomplete="off" class="form-control"
                                    placeholder="Masukkan Email">
                            </div>

                            <div class="form-group">
                                <label>Alamat <span class="text-danger">*</span></label>
                                <textarea name="alamat" placeholder="Masukkan Alamat" rows="5"
                                    class="form-control"></textarea>
                            </div>

                            <div class="form-group">
                                <label>Nomor Telepon <span class="text-danger">*</span></label>
                                <input type="text" name="nomor_telepon" autocomplete="off" class="form-control"
                                    placeholder="Masukkan Nomor Telepon">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Alamat Orang Tua <span class="text-danger">*</span></label>
                                <textarea name="alamat_orang_tua" rows="5" class="form-control"
                                    placeholder="Masukkan Alamat Orang Tua"></textarea>
                            </div>

                            <div class="form-group">
                                <label>Nomor Telepon Orang Tua <span class="text-danger">*</span></label>
                                <input type="text" name="nomor_telepon_orang_tua" autocomplete="off"
                                    class="form-control" placeholder="Masukkan Nomor Telepon Orang Tua">
                            </div>

                            <div class="form-group">
                                <label>Nomor Telepon Orang Dekat <span class="text-danger">*</span></label>
                                <input type="text" name="nomor_telepon_orang_dekat" autocomplete="off"
                                    class="form-control" placeholder="Masukkan Nomor Telepon Orang Dekat">
                            </div>

                            <div class="form-group">
                                <label>IPK <span class="text-danger">*</span></label>
                                <input type="text" name="ipk" autocomplete="off" class="form-control"
                                    placeholder="Masukkan IPK">
                            </div>

                            <div class="form-group">
                                <label>Password <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="password" autocomplete="off"
                                    placeholder="Masukkan Password">
                            </div>

                            <div class="form-group">
                                <label>Password (Konfirmasi) <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="password_konfirmasi" autocomplete="off"
                                    placeholder="Masukkan Password (Konfirmasi)">
                            </div>

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
                </div>
                <div class="modal-footer">
                    <button class="btn btn-warning" type="reset">Reset</button>
                    <button type="submit" class="btn btn-default btn-act">Submit</button>
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

    function show() {
        $('#data-dosen').DataTable().destroy();
        $('#data-dosen').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + "api/dosen",
                "method": "POST",
                "dataSrc": "data"
            },
            "columns": [{
                    data: null,
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: "nip"
                },
                {
                    data: "nama"
                },
                {
                    data: "nomor_telepon",
                    render: function(data) {
                        return '<a href="tel:' + data + '">' + data + '</a>';
                    }
                },
                {
                    data: "email",
                    render: function(data) {
                        return '<a href="mailto:' + data + '">' + data + '</a>';
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return `
							<div class="text-center">
								<a 
									class="btn btn-edit btn-primary btn-sm" 
									href="` + base_url + 'lihat-selengkapnya/' + data.id + `"
								>
									Lihat <i class="fa fa-chevron-right"></i>
								</a>
								<button 
									class="btn btn-edit btn-info btn-sm" 
									type="button" 
									data-toggle="modal" 
									data-target="#edit"
									data-id="` + data.id + `"
									data-nip="` + data.nip + `"
									data-nama="` + data.nama + `"
									data-nomor_telepon="` + data.nomor_telepon + `"
									data-email="` + data.email + `"
								>
									<i class="fa fa-pen"></i>
								</button>
								<button 
									class="btn btn-hapus btn-danger btn-sm" 
									type="button" 
									data-toggle="modal" 
									data-target="#hapus"
									data-id="` + data.id + `"
									data-nama="` + data.nama + `"
								>
									<i class="fa fa-trash"></i>
								</button>
							</div>
							`;
                    }
                }
            ]
        })
    }

    show();

    $(document).on('submit', 'form#tambahdosen', function(e) {
        e.preventDefault();
        call('api/dosen/create', $(this).serialize()).done(function(req) {
            if (req.error == true) {
                notif(req.message, 'error', true);
            } else {
                notif(req.message, 'success');
                $('form#tambah [name]').val('');
                $('div#tambah').modal('hide');
            }
        })
    })

    $(document).on('click', 'button.btn-edit', function() {
        $('form#edit .id').val($(this).data('id'));
        $('form#edit [name=nip]').val($(this).data('nip'));
        $('form#edit [name=nama]').val($(this).data('nama'));
        $('form#edit [name=nomor_telepon]').val($(this).data('nomor_telepon'));
        $('form#edit [name=email]').val($(this).data('email'));
    })




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
                    $('div#registrasi').modal('hide');
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

// tambah data mahasiswa

// penutup tambah data mahasiswa
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>