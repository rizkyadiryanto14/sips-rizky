<?php $this->app->extend('template/kaprodi') ?>

<?php $this->app->setVar('title', 'Seminar Akhir') ?>

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
                        <th>KRS</th>
                        <th>File Skripsi</th>
                        <th>Formulir</th>
                        <th>kwitansi</th>
                        <th>Lulus Mk Wajib</th>
                        <th>Kartu Bimbingan</th>
                        <th>Transkip</th>
                        <th>3 Sertifikat</th>
                        <th>Surat Bebas Bauk</th>
                        <th>Lembar Persetujuan Pembimbing</th>
                        <th>Plagiarisme</th>
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
                    data: "nama_penguji"
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.jadwal_skripsi != null) {
                            return data.jadwal_skripsi
                        } else {
                            return 'Belum Di Set'
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
                            return 'Belum Di Set'
                        }
                    }
                },
                {
                    data: "krs",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/krs/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "file_skripsi",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/file_skripsi/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "formulir",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/formulir/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "kwitansi",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/kwitansi/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "lulus_mkWajib",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/lulus_mkWajib/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "kartu_bimbingan",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/kartu_bimbingan/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "transkip",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/transkip/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "sertifikat",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/sertifikat/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "bebas_bauk",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/bebas_bauk/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "lembar_persetujuan",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/lembar_persetujuan/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "plagiat"
                }
            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            }
        });
    }

    show();
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
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>