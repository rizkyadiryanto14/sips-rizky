<?php $this->app->extend('template/kaprodi') ?>

<?php $this->app->setVar('title', 'Fakultas') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-6">
                <div class="card-title">Data Fakultas</div>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-fakultas">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Dekan Fakultas</th>
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

    function show() {
        $('#data-fakultas').DataTable().destroy();
        $('#data-fakultas').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + "api/fakultas",
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
                    data: "nama"
                },
                {
                    data: "dekan"
                }
            ]
        })
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        call('api/fakultas/create', $(this).serialize()).done(function(req) {
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
        $('form#edit [name=nama]').val($(this).data('nama'));
        $('form#edit [name=dekan]').val($(this).data('dekan'));
    })

    $(document).on('submit', 'form#edit', function(e) {
        e.preventDefault();
        const id = $('form#edit .id').val();
        call('api/fakultas/update/' + id, $(this).serialize()).done(function(req) {
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
        call('api/fakultas/destroy/' + id).done(function(req) {
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