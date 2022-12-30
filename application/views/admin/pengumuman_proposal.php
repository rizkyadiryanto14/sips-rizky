<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Skripsi') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-body">
        <div class="card-title">Cari Mahasiswa : </div>
        <form id="form_cari" action="<?= base_url('hasil-pencarian-mahasiswa'); ?>" method="POST"
            onsubmit="disableBtn()">
            <input type="hidden" name="level" value="Admin">
            <select class="select2" name="id" required id="wadah_select2"> </select>
            <button class="btn btn-primary mt-3 btn-act" type="sumbit">Lihat Selengkapnya <i
                    class="fa fa-chevron-right"></i></button>
        </form>
    </div>
</div>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <div class="card-title">Data Pengumuman Skripsi</div>
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
                        <th>Outline</th>
                        <th>Pembimbing</th>
                        <th>Status</th>
                    </tr>
                </thead>
            </table>
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
            req.data.forEach((obj) => {
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
                    data: "mahasiswa.nim",
                },
                {
                    data: "mahasiswa.nama",
                },
                {
                    data: "judul"
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
                    data: null,
                    render: function(data) {
                        if (data.status == '1') {
                            return '<span class="badge badge-success">Judul Di ACC</span>';
                        } else {
                            return '<span class="badge badge-danger">Judul belum dinilai/ditolak';
                        }
                    }
                },

            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            },
        });
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
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

    $(document).on('change', 'form#edit [name=pilih-file_transkip]', function() {
        read('form#edit [name=pilih-file_transkip]', function(data) {
            $('form#edit [name=file_transkip]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-file_krs]', function() {
        read('form#edit [name=pilih-file_krs]', function(data) {
            $('form#edit [name=file_krs]').val(data.result);
        })
    })

    $(document).on('click', 'button.btn-edit', function() {
        $('form#edit .id').val($(this).data('id'));
        $('form#edit [name=mahasiswa_id]').val($(this).data('mahasiswa_id'));
        $('form#edit [name=judul]').val($(this).data('judul'));
        $('form#edit [name=dosen_id]').val($(this).data('dosen_id'));
        $('form#edit [name=def_transkip]').val($(this).data('transkip'));
        $('form#edit [name=def_krs]').val($(this).data('krs'));
        $('form#edit [name=ringkasan]').val($(this).data('ringkasan'));
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
        $('form#setujui .judul').html($(this).data('judul_skripsi'));
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