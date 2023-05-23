<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Sidang Skripsi') ?>

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
                "url": base_url + "api/skripsi/admin_index",
                "method": "POST",
                "data": {
                    user_id: "<?= $this->session->userdata('id') ?>"
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
                            <span class="badge badge-success">Telah Diverifikasi Dospem</span>\
                            ';
                        } else {
                            status = '\
                            <span class="badge badge-danger">Belum Diverifikasi Dospem</span>\
                            ';
                        }
                        return '\
                            <div class="text-center">' + status + '</div>\
                            ';
                    }
                },
                {
                    data: "judul_skripsi"
                },
                {
                    data: "nama_pembimbing"
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.dosen_penguji_id != null) {
                            return '1. ' + data.dosen_penguji_id + '<br>2. ' +
                                data
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
                    // data: "jadwal_skripsi"
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
            } else {
                notif(res.message, 'success');
                $('form#tambah [name]').val('');
                $('div#tambah').modal('hide');
                show();
            }
        })
    })

    $(document).on('change', '[name=pilih-file_skripsi]', function() {
        read('[name=pilih-file_skripsi]', function(data) {
            $('[name=file_skripsi]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-krs]', function() {
        read('[name=pilih-krs]', function(data) {
            $('[name=krs]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-formulir]', function() {
        read('[name=pilih-formulir]', function(data) {
            $('[name=formulir]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-kwitansi]', function() {
        read('[name=pilih-kwitansi]', function(data) {
            $('[name=kwitansi]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-kartu_bimbingan]', function() {
        read('[name=pilih-kartu_bimbingan]', function(data) {
            $('[name=kartu_bimbingan]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-transkip]', function() {
        read('[name=pilih-transkip]', function(data) {
            $('[name=transkip]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-sertifikat]', function() {
        read('[name=pilih-sertifikat]', function(data) {
            $('[name=sertifikat]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-bebas_bauk]', function() {
        read('[name=pilih-bebas_bauk]', function(data) {
            $('[name=bebas_bauk]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-lembar_persetujuan]', function() {
        read('[name=pilih-lembar_persetujuan]', function(data) {
            $('[name=lembar_persetujuan]').val(data.result);
        })
    })

    $(document).on('change', '[name=pilih-lulus_mkWajib]', function() {
        read('[name=pilih-lulus_mkWajib]', function(data) {
            $('[name=lulus_mkWajib]').val(data.result);
        })
    })

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
    $('form#edit [name=def_sk_tim]').val($(this).data('sk_tim'));
    $('form#edit [name=def_persetujuan]').val($(this).data('persetujuan'));
    $('form#edit [name=def_bukti_konsultasi]').val($(this).data('bukti_konsultasi'));
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

$(document).on('click', 'button.btn-setuju', function() {
    $('form#setujui .id').val($(this).data('id'));
    $('form#setujui input.status').val($(this).data('status'));
    $('form#setujui span.status').html(($(this).data('status') == '1') ? 'batal menyetujui' : 'menyetujui');
    $('form#setujui .judul').html($(this).data('judul_skripsi'));
})

$(document).on('submit', 'form#setujui', function(e) {
    e.preventDefault();
    $(".btn-konfirmasi").attr('disabled', true).html('Loading...')
    const id = $('form#setujui .id').val();
    call('api/skripsi/' + (($('form#setujui .status').val() == '1') ? 'disagree' : 'agree') + '/' + id).done(
        function(req) {
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
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>