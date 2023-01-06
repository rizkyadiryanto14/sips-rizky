<?php $this->app->extend('template/kaprodi') ?>

<?php $this->app->setVar('title', "Pendaftaran Skripsi") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <div class="card-title">Data Pendaftaran Skripsi</div>
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
                        <th>Nim</th>
                        <th>Nama</th>
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

    function show() {
        $('#data-proposal').DataTable().destroy();
        $('#data-proposal').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + 'api/proposal_mahasiswa',
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
                    data: "judul"
                },
                {
                    data: "ringkasan"
                },
                {
                    data: null,
                    render: function(data) {
                        return data.pembimbing.nama
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.status == '1') {
                            status = '\
                            <span class="badge badge-success mr-2">Judul Diterima</span>';
                        } else {
                            status = '\
                            <span class="badge badge-danger">Judul Ditolak/Belum disetujui</span>\
                            ';
                        }
                        return '\
                            <div class="text-center">' + status + '</div>\
                            ';
                    }
                },
            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            }
        });
    }

    show();

    call('api/dosen').done(function(req) {
        dosen = '<option value="">- Pilih Dosen -</option>';
        if (req.data) {
            $.each(req.data, function(index, obj) {
                dosen += '<option value="' + obj.id + '">' + obj.nama + '</option>';
            })
        }
        $('[name=dosen_id]').html(dosen);
    })

})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>