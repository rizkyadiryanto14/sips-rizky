<?php $this->app->extend('template/kaprodi') ?>
<?php $this->app->setVar('title', 'Prodi') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-6">
                <div class="card-title">Data Prodi</div>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-prodi">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Kode</th>
                        <th>Nama</th>
                        <th>Fakultas</th>
                        <th>Ketua Prodi</th>
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

    call('api/dosen').done(function(req) {
        dosen = '<option value="">- Pilih Dosen -</option>';
        if (req.data) {
            req.data.forEach(obj => {
                dosen += '<option value="' + obj.id + '">' + obj.nama + '</option>'
            })
        }
        $('[name=dosen_id]').html(dosen);
    })

    call('api/fakultas').done(function(req) {
        fakultas = '<option value="">- Pilih Fakultas -</option>';
        if (req.data) {
            req.data.forEach(obj => {
                fakultas += '<option value="' + obj.id + '">' + obj.nama + '</option>'
            })
        }
        $('[name=fakultas_id]').html(fakultas);
    })

    function show() {
        $('#data-prodi').DataTable().destroy();
        $('#data-prodi').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + "api/prodi",
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
                    data: "kode"
                },
                {
                    data: "nama"
                },
                {
                    data: "fakultas",
                    render: function(data) {
                        return data.nama
                    }
                },
                {
                    data: "kaprodi",
                    render: function(data) {
                        return data.nama
                    }
                }
            ]
        })
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        call('api/prodi/create', $(this).serialize()).done(function(req) {
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

    $(document).on('click', 'button.btn-edit', function() {
        $('form#edit .id').val($(this).data('id'));
        $('form#edit [name=kode]').val($(this).data('kode'));
        $('form#edit [name=nama]').val($(this).data('nama'));
        $('form#edit [name=dosen_id]').val($(this).data('dosen_id'));
        $('form#edit [name=fakultas_id]').val($(this).data('fakultas_id'));
    })

    $(document).on('submit', 'form#edit', function(e) {
        e.preventDefault();
        const id = $('form#edit .id').val();
        call('api/prodi/update/' + id, $(this).serialize()).done(function(req) {
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
        $('form#hapus .nama').html($(this).data('nama'));
    })

    $(document).on('submit', 'form#hapus', function(e) {
        e.preventDefault();
        const id = $('form#hapus .id').val();
        call('api/prodi/destroy/' + id).done(function(req) {
            if (req.error == true) {
                notif(req.message, 'error', true);
            } else {
                notif(req.message, 'success');
                $('div#hapus').modal('hide');
                show();
            }
        })
    })

})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>