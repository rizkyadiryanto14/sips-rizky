<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Pengumuman') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <div class="card-title">Pengumuman Sidang Skripsi</div>
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
                    data: "mahasiswa",
                    render: function(data) {
                        return data.nim;
                    }
                },
                {
                    data: "mahasiswa",
                    render: function(data) {
                        return data.nama;
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

            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            }
        });
    }

    show();
})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>