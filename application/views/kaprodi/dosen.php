<?php $this->app->extend('template/kaprodi') ?>

<?php $this->app->setVar('title', 'Kaprodi') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-6">
                <div class="card-title">Data Dosen</div>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-dosen">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NIP</th>
                        <th>Nama</th>
                        <th>Nomor Telepon</th>
                        <th>Email</th>
                        <th>Aksi</th>
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
        $('#data-dosen').DataTable().destroy();
        $('#data-dosen').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + "api/dosen",
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
                    data: "nip"
                },
                {
                    data: "nama"
                },
                {
                    data: "nomor_telepon",
                    render: function(data) {
                        return '<a href="tel:' + data + '">' + data + '</a>';
                    }
                },
                {
                    data: "email",
                    render: function(data) {
                        return '<a href="mailto:' + data + '">' + data + '</a>';
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return `
							<div class="text-center">
								<a 
									class="btn btn-edit btn-primary btn-sm" 
									href="` + base_url + 'lihat-selengkapnya/' + data.id + `"
								>
									Lihat <i class="fa fa-chevron-right"></i>
								</a>
							</div>
							`;
                    }
                }
            ]
        })
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        call('api/dosen/create', $(this).serialize()).done(function(req) {
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
        $('form#edit [name=nip]').val($(this).data('nip'));
        $('form#edit [name=nama]').val($(this).data('nama'));
        $('form#edit [name=nomor_telepon]').val($(this).data('nomor_telepon'));
        $('form#edit [name=email]').val($(this).data('email'));
    })

    $(document).on('submit', 'form#edit', function(e) {
        e.preventDefault();
        const id = $('form#edit .id').val();
        call('api/dosen/update/' + id, $(this).serialize()).done(function(req) {
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

})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>