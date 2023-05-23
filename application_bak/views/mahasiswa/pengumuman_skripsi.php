<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Sidang Skripsi') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <div class="card-title">Sidang Skripsi</div>
            </div>
        </div>
        <div class="card-tools mt-2">
            <span class="badge badge-success"><i class="fa fa-check"></i> Disetujui</span>
            <span class="badge badge-danger ml-3"><i class="fa fa-times"></i> Belum/Tidak Disetujui</span>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-skripsi">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Status</th>
                        <th>Nim</th>
                        <th>Nama</th>
                        <th>Judul Skripsi</th>
                        <th>Dosen Pembimbing</th>
                        <th>Dosen Penguji</th>
                        <th>Jadwal Skripsi</th>
                        <th>Tempat</th>
                    </tr>
                </thead>
                <tbody></tbody>
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
    call('api/dosen').done(function(res) {
        dosen = `<option value="">- Pilih Dosen -</option>`;
        if (res.data) {
            res.data.forEach(obj => {
                dosen += `<option value="` + obj.id + `">` + obj.nama + `</option>`;
            })
        }
        $('[name=dosen_id]').html(dosen);
        $('[name=dosen_penguji_id]').html(dosen);
    })

    show = () => {
        $('#data-skripsi').DataTable().destroy();
        $('#data-skripsi').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + "api/skripsi",
                "method": "POST",
                "data": {
                    mahasiswa_id: "<?= $this->session->userdata('id') ?>"
                },
                "dataSrc": "data"
            },
            "columns": [{
                    data: null,
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.status == '1') {
                            status = '\
                            <span class="badge badge-success mr-2"><i class="fa fa-check"></i></span>';
                        } else {
                            status = '\
                            <span class="badge badge-danger"><i class="fa fa-times"></i></span>\
                            ';
                        }
                        return '\
                            <div class="text-center">' + status + '</div>\
                            ';
                    }
                },
                {
                    data: "nim"
                },
                {
                    data: "nama_mahasiswa"
                },
                {
                    data: "judul_skripsi"
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.nama_pembimbing != null) {
                            return data.nama_pembimbing;
                        } else {
                            return 'data belum di set';
                        }
                    }
                },
                {

                    data: null,
                    render: function(data) {
                        if (data.dosen_penguji_id != null) {
                            return '1. ' + data.dosen_penguji_id + '<br>2. ' + data
                                .dosen_penguji2_id;
                        } else {
                            return '<span class="badge badge-danger">Data Belum di set</span>';
                        }
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.jadwal_skripsi != null) {
                            return data.jadwal_skripsi + ' - ' + data.jam_selesai
                        } else {
                            return '<span class="badge badge-danger">Data Belum di set</span>';
                        }
                    }

                },
                {
                    data: null,
                    render: function(data) {
                        if (data.tempat != null) {
                            return data.tempat
                        } else {
                            return '<span class="badge badge-danger">Data Belum di set</span>';
                        }
                    }
                },
            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            }
        });
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        call('api/skripsi/create', $(this).serialize()).done(function(res) {
            if (res.error == true) {
                notif(res.message, 'error', true);
                $('form#tambah [name]').val('');
                $('div#tambah').modal('hide');
            } else {
                notif(res.message, 'success');
                $('form#tambah [name]').val('');
                $('div#tambah').modal('hide');
                show();
            }
        })
    })

    // form tambah
    $(document).on('change', 'form#tambah [name=pilih-file_skripsi]', function() {
        read('form#tambah [name=pilih-file_skripsi]', function(data) {
            $('form#tambah [name=file_skripsi]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-krs]', function() {
        read('form#tambah [name=pilih-krs]', function(data) {
            $('form#tambah [name=krs]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-kwitansi]', function() {
        read('form#tambah [name=pilih-kwitansi]', function(data) {
            $('form#tambah [name=kwitansi]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-formulir]', function() {
        read('form#tambah [name=pilih-formulir]', function(data) {
            $('form#tambah [name=formulir]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-lulus_mkWajib]', function() {
        read('form#tambah [name=pilih-lulus_mkWajib]', function(data) {
            $('form#tambah [name=lulus_mkWajib]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-kartu_bimbingan]', function() {
        read('form#tambah [name=pilih-kartu_bimbingan]', function(data) {
            $('form#tambah [name=kartu_bimbingan]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-transkip]', function() {
        read('form#tambah [name=pilih-transkip]', function(data) {
            $('form#tambah [name=transkip]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-sertifikat]', function() {
        read('form#tambah [name=pilih-sertifikat]', function(data) {
            $('form#tambah [name=sertifikat]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-lembar_persetujuan]', function() {
        read('form#tambah [name=pilih-lembar_persetujuan]', function(data) {
            $('form#tambah [name=lembar_persetujuan]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-bebas_bauk]', function() {
        read('form#tambah [name=pilih-bebas_bauk]', function(data) {
            $('form#tambah [name=bebas_bauk]').val(data.result);
        })
    })

    // end form tambah

    // form edit
    $(document).on('change', 'form#edit [name=pilih-file_skripsi]', function() {
        read('form#edit [name=pilih-file_skripsi]', function(data) {
            $('form#edit [name=file_skripsi]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-formulir]', function() {
        read('form#edit [name=pilih-formulir]', function(data) {
            $('form#edit [name=formulir]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-krs]', function() {
        read('form#edit [name=pilih-krs]', function(data) {
            $('form#edit [name=krs]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-kwitansi]', function() {
        read('form#edit [name=pilih-kwitansi]', function(data) {
            $('form#edit [name=kwitansi]').val(data.result);
        })
    })

    // end form edit

    $(document).on('click', 'button.btn-hapus', function() {
        $('form#hapus .id').val($(this).data('id'));
    })

    $(document).on('submit', 'form#hapus', function(e) {
        e.preventDefault();
        const id = $('form#hapus .id').val();
        call('api/skripsi/destroy/' + id).done(function(res) {
            if (res.error == true) {
                notif(res.message, 'error', true);
            } else {
                notif(res.message, 'success');
                $('div#hapus').modal('hide');
                show();
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

$(document).on('click', 'button.btn-edit', function() {
    $('form#edit .id').val($(this).data('id'));
    $('form#edit [name=mahasiswa_id]').val($(this).data('mahasiswa_id'));
    $('form#edit [name=judul_skripsi]').val($(this).data('judul_skripsi'));
    $('form#edit [name=dosen_id]').val($(this).data('dosen_id'));
    $('form#edit [name=dosen_penguji_id]').val($(this).data('dosen_penguji_id'));
    $('form#edit [name=jadwal_skripsi]').val($(this).data('jadwal_skripsi'));
    $('form#edit [name=def_file_skripsi]').val($(this).data('file_skripsi'));
    $('form#edit [name=def_formulir]').val($(this).data('formulir'));
    $('form#edit [name=def_krs]').val($(this).data('krs'));
    $('form#edit [name=def_kwitansi]').val($(this).data('kwitansi'));
})

$(document).on('submit', 'form#edit', function(e) {
    e.preventDefault();
    var id = $('form#edit .id').val();
    call('api/skripsi/update/' + id, $(this).serialize()).done(function(req) {
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
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>