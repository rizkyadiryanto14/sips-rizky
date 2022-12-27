<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Pengumuman') ?>

<?php $this->app->section() ?>

<style>
a[disabled="disabled"] {
    pointer-events: none;
}
</style>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <div class="card-title">Pengumuman Seminar</div>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-seminar">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Nim</th>
                        <th>Proposal</th>
                        <th>tanggal</th>
                        <th>tempat</th>
                        <th>Dosen Pembimbing</th>
                        <th>Dosen Penguji</th>
                        <th>status</th>
                        <th>Berita Acara</th>
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
base_url = '<?= base_url() ?>'
$(document).ready(function() {
    $.ajax({
        url: base_url + 'getData/proposal_mahasiswa',
        type: 'post',
        data: {
            mahasiswa_id: <?= $this->session->userdata('id') ?>
        },
        dataType: 'json',
        success: function(res) {
            proposal = `<option value="">- Pilih Proposal -</option>`;
            $.each(res, function(i, item) {
                if (item.status == '1') {
                    proposal += `<option value="` + item.id + `">` + item.judul +
                        `</option>`;
                }
            })
            $('[name=proposal_mahasiswa_id]').html(proposal);
        }
    })

    call('api/dosen').done(function(res) {
        dosen = `<option value="">- Pilih Dosen -</option>`;
        if (res.data) {
            res.data.forEach(obj => {
                dosen += `<option value="` + obj.id + `">` + obj.nama + `</option>`;
            })
        }
        $('[name=dosen_id]').html(dosen);
    })

    show = () => {
        $('#data-seminar').DataTable().destroy();
        $('#data-seminar').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + 'api/seminar',
                "method": "POST",
                "data": {
                    mahasiswa_id: '<?= $this->session->userdata('id') ?>'
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
                    data: "nama_mahasiswa"
                },
                {
                    data: "nim"
                },
                {
                    data: "proposal_mahasiswa_judul"
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.tanggal != null) {
                            return data.tanggal + ' : ' + data.jam
                        } else {
                            return '<span class="badge badge-danger">Belum Ada Pengumuman</span>';
                        }
                    }

                },
                {
                    data: null,
                    render: function(data) {
                        if (data.tempat != null) {
                            return data.tempat
                        } else {
                            return '<span class="badge badge-danger">Belum Ada Pengumuman</span>';
                        }
                    }
                },
                {
                    data: "pembimbing_nama"
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

                    data: "hasil_seminar_status",
                    render: function(data) {
                        if (data == 1) {
                            return '<span class="badge badge-succes">Lanjut (Sempurna)</span>'
                        } else if (data == 2) {
                            return '<span class="badge badge-warning">Lanjut (Perbaikan)</span>'
                        } else {
                            return '<span class="badge badge-danger">Data Anda Sedang di Review</span>'
                        }
                    }

                },
                {
                    data: null,
                    render: function(data) {
                        if (data.hasil_seminar_status == 1 || data.hasil_seminar_status ==
                            2) {
                            return `
                        <div class="text-center">
                            <a href="` + base_url + `mahasiswa/seminar/download/` + data.id +
                                `" class="btn btn-sm btn-primary" target="_blank" >
                                Cetak Berita Acara</i>
                            </a>
                        </div>
                        `;
                        } else {
                            return `
                        <div class="text-center">
                            <a href="` + base_url + `mahasiswa/seminar/download/` + data.id +
                                `" class="btn btn-sm btn-primary" target="_blank" disabled="disabled">
                                Cetak Berita Acara</i>
                            </a>
                        </div>
                        `;
                        }
                    }
                }
            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            }
        })
    }

    show();


})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>