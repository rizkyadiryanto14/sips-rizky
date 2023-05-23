<?php $this->app->extend('template/dosen') ?>

<?php $this->app->setVar('title', "Pengumuman Skripsi") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-body">
        <div class="card-title">Cari Mahasiswa : </div>
        <form id="form_cari" action="<?= base_url('hasil-pencarian-mahasiswa'); ?>" method="POST"
            onsubmit="disableBtn()">
            <input type="hidden" name="level" value="Dosen">
            <select class="select2" name="id" required id="wadah_select2">

            </select>
            <button class="btn btn-primary mt-3 btn-act" type="sumbit">Lihat Selengkapnya <i
                    class="fa fa-chevron-right"></i></button>
        </form>

    </div>
</div>
<div class="card">
    <div class="card-header">
        <div class="card-title">Data Pendaftaran Skripsi</div>
        <div class="card-tools mt-2">
            <span class="badge badge-success"><i class="fa fa-check"></i> Disetujui</span>
            <span class="badge badge-danger ml-3"><i class="fa fa-times"></i> Belum/Tidak Disetujui</span>
        </div>
    </div>
    <div class="card-body">
        <div class="text-center">
            <small>(Klik tombol X untuk menyetujui atau tombol Ceklis untuk batal menyetujui</small><br />
            <small>Dosen hanya dapat mengkonfirmasi Proposal mahasiswa bimbingannya</small>
        </div>
        <div class="table-responsive">
            <table class="table table-hover" id="data-proposal">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NIM</th>
                        <th>Mahasiswa</th>
                        <th>Nama Prodi</th>
                        <th>Judul</th>
                        <th>Pembimbing</th>
                        <th>Status</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
</div>
<div class="modal fade" id="setujui">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="setujui">
                <div class="modal-header">
                    <div class="modal-title">Status Proposal</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <input type="hidden" class="status">
                    <p>Anda yakin <span class="status">mengetujui / batal menyetujui</span> proposal <strong
                            class="judul">Judul Proposal</strong> ?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary btn-konfirmasi">Konfirmasi</button>
                </div>
            </form>
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

    function show() {
        $('#data-proposal').DataTable().destroy();
        $('#data-proposal').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + 'api/proposal_mahasiswa',
                "method": "POST",
                "data": {
                    dosen_id: '<?= $this->session->userdata('id') ?>'
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
                    data: "mahasiswa",
                    render: function(data) {
                        return data.nama_prodi;
                    }
                },
                {
                    data: "judul"
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
                        if (data.status == 1) {
                            return '<span class="badge badge-success">Judul di Acc</span>'
                        } else {
                            return '<span class="badge badge-danger">Judul Belum di Acc</span>'
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