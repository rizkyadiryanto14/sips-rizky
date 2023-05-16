<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', "Pendaftaran Skripsi") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-body">
        <div class="card-title">Cari Mahasiswa : </div>
        <form id="form_cari" action="<?= base_url('hasil-pencarian-mahasiswa'); ?>" method="POST"
            onsubmit="disableBtn()">
            <input type="hidden" name="level" value="Admin">
            <select class="select2" name="id" required id="wadah_select2">

            </select>
            <button class="btn btn-primary mt-3 btn-act" type="sumbit">
                Lihat Selengkapnya <i class="fa fa-chevron-right"></i>
            </button>
        </form>
    </div>
</div>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <div class="card-title">Data Pendaftaran Skripsi</div>
            </div>
            <div class="col text-right">
                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambah">
                    <i class="fa fa-plus"></i>
                    Tambah
                </button>
            </div>
        </div>
        <div class="card-tools mt-2">
            <span class="badge badge-success"><i class="fa fa-check"></i> Disetujui</span>
            <span class="badge badge-danger ml-3"><i class="fa fa-times"></i> Belum/Tidak Disetujui</span>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-proposal">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NIM</th>
                        <th>Mahasiswa</th>
                        <th>Judul</th>
                        <th>Transkip</th>
                        <th>KRS</th>
                        <th>Outline</th>
                        <th>Pembimbing</th>
                        <th>Cek Kemiripan</th>
                        <th>Lulus MK Metodologi</th>
                        <th>Lulus MK Wajib</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
</div>

<div class="modal fade" id="tambah">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="tambah" action="javascript:;">
                <div class="modal-header">
                    <div class="modal-title">Tambah Pendaftaran </div>
                </div>
                <div class="modal-body">
                    <!-- <input type="hidden" name="mahasiswa_id" value="<?= $this->session->userdata('id') ?>"> -->
                    <div class="form-group">
                        <label for="">Mahasiswa</label>
                        <select name="mahasiswa_id" class="form-control">
                            <option value=""> -Pilih Mahasiswa- </option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Judul</label>
                        <input name="judul" placeholder="Masukkan Judul" autocomplete="off" type="text"
                            class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Dosen Pembimbing</label>
                        <select name="dosen_id" class="form-control">
                            <option value="">- Pilih Dosen -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Transkrip</label>
                        <input type="file" class="form-control" name="pilih-transkip" accept="application/pdf">
                        <input type="hidden" name="transkip">
                    </div>
                    <div class="form-group">
                        <label>KRS Terakhir</label>
                        <input type="file" class="form-control" name="pilih-krs" accept="application/pdf">
                        <input type="hidden" name="krs">
                    </div>
                    <div class="form-group">
                        <label>Outline</label>
                        <input type="file" class="form-control" name="pilih-outline_skripsi" id="outline_skripsi"
                            accept="application/pdf">
                        <input type="hidden" name="outline_skripsi">
                    </div>
                    <div class="form-group">
                        <label for="">Lulus MK Metodologi</label>
                        <input type="radio" name="lulus_mkMetodologi" value="Lulus" class="form-check">Lulus
                        <input type="radio" name="lulus_mkMetodologi" value="Tidak Lulus" class="form-check">Tidak Lulus
                    </div>
                    <div class="form-group">
                        <label for="">Lulus MK Wajib</label>
                        <input type="radio" name="lulus_mkWajib" value="Lulus" class="form-check">Lulus
                        <input type="radio" name="lulus_mkWajib" value="Tidak Lulus" class="form-check">Tidak Lulus
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary btn-tambah">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="edit" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="edit">
                <div class="modal-header">
                    <div class="modal-title">Edit Proposal</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <div class="form-group">
                        <label>Mahasiswa</label>
                        <select name="mahasiswa_id" class="form-control"></select>
                    </div>
                    <div class="form-group">
                        <label>Judul</label>
                        <input name="judul" placeholder="Masukkan Judul" autocomplete="off" type="text"
                            class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Dosen Pembimbing</label>
                        <select name="dosen_id" class="form-control">
                            <option value="">- Pilih Dosen -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Transkrip</label>
                        <input type="file" class="form-control" name="pilih-transkip" accept="application/pdf">
                        <input type="hidden" name="transkip">
                        <input type="hidden" name="def_transkip">
                    </div>
                    <div class="form-group">
                        <label>KRS</label>
                        <input type="file" class="form-control" name="pilih-krs" accept="application/pdf">
                        <input type="hidden" name="krs">
                        <input type="hidden" name="def_krs">
                    </div>
                    <div class="form-group">
                        <label>Outline</label>
                        <input type="file" class="form-control" name="pilih-outline_skripsi" accept="application/pdf">
                        <input type="hidden" name="outline_skripsi">
                        <input type="hidden" name="def_outline_skripsi">
                    </div>
                    <div class="form-group">
                        <label for="">Lulus MK Metodologi</label>
                        <input type="radio" name="lulus_mkMetodologi" value="Lulus" class="form-check">Lulus
                        <input type="radio" name="lulus_mkMetodologi" value="Tidak Lulus" class="form-check">Tidak Lulus
                    </div>
                    <div class="form-group">
                        <label for="">Lulus MK Wajib</label>
                        <input type="radio" name="lulus_mkWajib" value="Lulus" class="form-check">Lulus
                        <input type="radio" name="lulus_mkWajib" value="Tidak Lulus" class="form-check">Tidak Lulus
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
<div class="modal fade" id="hapus" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="hapus">
                <div class="modal-header">
                    <div class="modal-title">Hapus Proposal</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <p>Anda yakin menghapus proposal <strong class="judul">Judul Proposal</strong> ?</p>
                    <li>Konsultasi proposal juga akan terhapus</li>
                    <li>Seminar proposal juga akan terhapus</li>
                    <li>Penelitian proposal juga akan terhapus</li>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-danger">Hapus</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="setujui" tabindex="-2">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="setujui">
                <div class="modal-header">
                    <div class="modal-title">Status Skripsi</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <input type="hidden" class="status">
                    <p>Anda yakin <span class="status">mengetujui / batal menyetujui</span> skripsi
                    <p>Nama :<strong class="nama">Nama Mahasiswa</strong></p>
                    <p>Nim : <strong class="nim">Nim Mahasiswa</strong></p>
                    <p>Judul : <strong class="judul">Judul Skripsi</strong></p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary btn-konfirmasi">Konfirmasi</button>
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
<script>
$(document).ready(function() {
    getDataSelect()
    call('api/mahasiswa').done(function(req) {
        mahasiswa = '<option value="">- Pilih Mahasiswa -</option>';
        if (req.data) {
            $.each(req.data, function(index, obj) {
                mahasiswa += '<option value="' + obj.id + '">' + obj.nama + '</option>';
            })
        }
        $('[name=mahasiswa_id]').html(mahasiswa);
    })

    call('api/dosen').done(function(req) {
        dosen = '<option value="">- Pilih Dosen -</option>';
        if (req.data) {
            $.each(req.data, function(index, obj) {
                dosen += '<option value="' + obj.id + '">' + obj.nama + '</option>';
            })
        }
        $('[name=dosen_id]').html(dosen);
    })

    function show() {
        $('#data-proposal').DataTable().destroy();
        $('#data-proposal').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + 'api/proposal_mahasiswa',
                "method": "POST",
                "data": {
                    user_id: "<?= $this->session->userdata('id') ?>"
                },
                "dataSrc": "data"
            },
            "columns": [{
                    data: null,
                    render: function(data, type, row, meta) {
                        console.log(data)
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return data.mahasiswa.nim
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return data.mahasiswa.nama
                    }
                },
                {
                    data: "judul"
                },
                {
                    data: "transkip",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/transkip/' + data +
                            '">' + data + '</a>';
                    }
                },
                {
                    data: "krs",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/krs/' + data +
                            '">' + data + '</a>';
                    }
                },
                {
                    data: "outline_skripsi",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/outline_skripsi/' +
                            data +
                            '">' + data + '</a>';
                    }
                },
                {
                    data: "pembimbing.nama"
                },
                {
                    data: "plagiat"
                },
                {
                    data: "lulus_mkMetodologi"
                },
                {
                    data: "lulus_mkWajib"
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.status == '1') {
                            status = '\
                            <button class="btn btn-sm btn-setuju btn-success" type="button" data-id="' + data.id +
                                '" data-judul="' + data.judul + '" data-status="' + data
                                .status + '"data-mahasiswa.nama="' + data.mahasiswa.nama +
                                '" data-mahasiswa.nim="' + data.mahasiswa.nim + '"  data-toggle="modal" data-target="#setujui">\
                                <i class="fa fa-check"></i>\
                            </button>\
                            ';
                        } else {
                            status = '\
                            <button class="btn btn-sm btn-setuju btn-danger" type="button" data-id="' + data.id +
                                '" data-judul="' + data.judul + '" data-status="' + data
                                .status + '"data-mahasiswa.nama="' + data.mahasiswa.nama +
                                '" data-mahasiswa.nim="' + data.mahasiswa.nim + '" data-toggle="modal" data-target="#setujui">\
                                <i class="fa fa-times"></i>\
                            </button>\
                            ';
                        }
                        return '\
                            <div class="text-center">' + status + '</div>\
                            ';
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        if (level == '1') {
                            return '\
                                <div class="text-center">\
                                <button class="btn btn-sm btn-info btn-edit" type="button" data-toggle="modal" data-target="#edit" data-id="' +
                                data.id + '" data-mahasiswa.nama="' + data.mahasiswa.nama +
                                '" data-judul="' + data.judul + '" data-ringkasan="' +
                                '">\
                                    <i class="fa fa-pen"></i>\
                                </button>\
                                <button class="btn btn-sm btn-danger btn-hapus" type="button" data-toggle="modal" data-target="#hapus" data-id="' +
                                data.id +
                                '" data-judul="' + data.judul + '"  data-mahasiswa.nama="' +
                                data.mahasiswa.nama +
                                '">\
                                    <i class="fa fa-trash"></i>\
                                </button>\
                                </div>\
                                ';
                        } else {
                            return '-';
                        }
                    }
                }
            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            },
        });
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        $(".btn-tambah").attr('disabled', true).html('Loading...')
        call('api/proposal_mahasiswa/create', $(this).serialize()).done(function(req) {
            if (req.error == true) {
                notif(req.message, 'error', true);
            } else {
                notif(req.message, 'success');
                $('form#tambah [name]').val('');
                $('div#tambah').modal('hide');
                show();
            }
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-transkip]', function() {
        read('form#tambah [name=pilih-transkip]', function(data) {
            $('form#tambah [name=transkip]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-krs]', function() {
        read('form#tambah [name=pilih-krs]', function(data) {
            $('form#tambah [name=krs]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-outline_skripsi]', function() {
        read('form#tambah [name=pilih-outline_skripsi]', function(data) {
            $('form#tambah [name=outline_skripsi]').val(data.result);
        })
    })


    $(document).on('change', 'form#edit [name=pilih-transkip]', function() {
        read('form#edit [name=pilih-transkip]', function(data) {
            $('form#edit [name=transkip]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-krs]', function() {
        read('form#edit [name=pilih-krs]', function(data) {
            $('form#edit [name=krs]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-outline_skripsi]', function() {
        read('form#edit [name=pilih-outline_skripsi]', function(data) {
            $('form#edit [name=outline_skripsi]').val(data.result);
        })
    })

    $(document).on('click', 'button.btn-edit', function() {
        $('form#edit .id').val($(this).data('id'));
        $('form#edit [name=mahasiswa_id]').val($(this).data('mahasiswa_id'));
        $('form#edit [name=judul]').val($(this).data('judul'));
        $('form#edit [name=dosen_id]').val($(this).data('dosen_id'));
        $('form#edit [name=def_transkip]').val($(this).data('transkip'));
        $('form#edit [name=def_krs]').val($(this).data('krs'));
        $('form#edit [name=def_outline_skripsi]').val($(this).data('outline_skripsi'));
    })

    $(document).on('submit', 'form#edit', function(e) {
        e.preventDefault();
        var id = $('form#edit .id').val();
        call('api/proposal_mahasiswa/update/' + id, $(this).serialize()).done(function(req) {
            if (req.error == true) {
                notif(req.message, 'error', true);
            } else {
                notif(req.message, 'success');
                $('form#edit [name]').val('');
                $('div#edit').modal('hide');
                show();
            }
        })
    })

    $(document).on('click', 'button.btn-hapus', function() {
        $('form#hapus .id').val($(this).data('id'));
        $('form#hapus .judul').html($(this).data('judul'));
    })

    $(document).on('submit', 'form#hapus', function(e) {
        e.preventDefault();
        var id = $('form#hapus .id').val();
        call('api/proposal_mahasiswa/destroy/' + id).done(function(req) {
            if (req.error == true) {
                notif(req.message, 'error', true);
            } else {
                notif(req.message, 'success');
                $('form#hapus [name]').val('');
                $('div#hapus').modal('hide');
                show();
            }
        })
    })

    $(document).on('click', 'button.btn-setuju', function() {
        $('form#setujui .id').val($(this).data('id'));
        $('form#setujui input.status').val($(this).data('status'));
        $('form#setujui span.status').html(($(this).data('status') == '1') ? 'batal menyetujui' :
            'menyetujui');
        $('form#setujui .judul').html($(this).data('judul'));
        $('form#setujui .nama').html($(this).data('mahasiswa.nama'));
        $('form#setujui .nim').html($(this).data('mahasiswa.nim'));
    })


    $(document).on('submit', 'form#setujui', function(e) {
        e.preventDefault();
        $(".btn-konfirmasi").attr('disabled', true).html('Loading...')
        const id = $('form#setujui .id').val();
        call('api/proposal_mahasiswa/' + (($('form#setujui .status').val() == '1') ? 'disagree' :
                'agree') + '/' +
            id).done(function(req) {
            if (req.error == true) {
                notif(req.message, 'error', true);
                $(".btn-konfirmasi").attr('disabled', false).html('Konfirmasi')
            } else {
                notif(req.message, 'success');
                $('div#setujui').modal('hide');
                show();
                $(".btn-konfirmasi").attr('disabled', false).html('Konfirmasi')
            }
        })
    })

})

function getDataSelect() {
    $.ajax({
        url: base_url + 'getAllData/mahasiswa',
        dataType: 'json',
        type: 'get',
        success: function(res) {
            data = '<option value=""></option>'
            $.each(res, function(i, item) {
                data += '<option value="' + item.id + '">(' + item.nim + ') ' + item.nama +
                    '</option>'
            })
            $("#wadah_select2").html(data)
        }
    })
}

function disableBtn() {
    $(".btn-act").attr('disabled', true).html('Loading ...')
}
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>