<?php $this->app->extend('template/dosen') ?>

<?php $this->app->setVar('title', 'Seminar') ?>

<?php $this->app->section() ?>

<style>
a[disabled="disabled"] {
    pointer-events: none;
}
</style>
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
        <div class="card-title">Data Seminar</div>
        <div class="text-right">
            <button class="btn btn-primary" data-target="#tandatangan" data-toggle="modal">Tanda Tangan</button>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-seminar">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Status</th>
                        <th>Tanda tangan</th>
                        <th>Nim</th>
                        <th>Mahasiswa</th>
                        <th>Nama Prodi</th>
                        <th>Proposal</th>
                        <th>Tanggal</th>
                        <th>Tempat</th>
                        <th>Dosen Penguji</th>
                        <th>Dosen Pembimbing</th>
                        <th>Surat Permohonan</th>
                        <th>File Proposal</th>
                        <th>Syarat_Seminar</th>
                        <th>Kartu Bimbingan</th>s
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>
<div class="modal fade" id="tandatangan">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="<?= base_url() ?>dosen/seminar/update_tandatangan/<?= $seminar_id ?>" method="POST">
                <div class="modal-header">
                    <div class="modal-title">
                        Masukan tanda tangan di bawah ini untuk di tampilkan di
                    </div>
                </div>
                <div class="modal-body">
                    <label for="">Tanda Tangan</label>
                    <input type="file" name="tanda_tangan" id="tanda_tangan" class="form-control">
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="hapus">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="hapus">
                <div class="modal-header">
                    <div class="modal-title">Hapus Seminar</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <p>Anda yakin menghapus seminar terpilih ?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Hapus</button>
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
    show = () => {
        $('#data-seminar').DataTable().destroy();
        $('#data-seminar').DataTable({
            "deferRender": true,
            "ajax": {
                "url": base_url + 'api/seminar',
                "method": "POST",
                "dataSrc": "data"
            },
            "columns": [{
                    data: null,
                    render: function(data, typw, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1
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
                            return '<span class="badge badge-danger">Ditolak/Belum di nilai</span>'
                        }
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.hasil_seminar_status == 1) {
                            return ` <div class = "text-center" >
                                            <a href = "` + base_url + `dosen/seminar/tandatangan/` + data.id +
                                `" class="btn btn-sm btn-warning">
                                <i class="fa fa-edit"></i>
                            </a>
                        </div>
                        `;
                        } else {
                            return ` <div class = "text-center" >
                                            <a href = "` + base_url + `dosen/seminar/tandantangan/` + data.id +
                                `" class="btn btn-sm btn-warning ${data.tanda_tangan != null ? 'd-none' : '' }">
                                <i class="fa fa-edit"></i>
                            </a>
                        </div>
                        `;
                        }
                    }
                },
                {
                    data: "nim"
                },
                {
                    data: "nama_mahasiswa"
                },
                {
                    data: "nama_prodi"
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
                            return "<span class='badge badge-danger'>Belum Di set</span>"
                        }
                    }

                },
                {
                    data: null,
                    render: function(data) {
                        if (data.tempat != null) {
                            return data.tempat
                        } else {
                            return "<span class='badge badge-danger'>Belum Di set</span>"
                        }
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.penguji_nama != null) {
                            return data.penguji_nama;
                        } else {
                            return "<span class='badge badge-danger'>Belum Di set</span>"
                        }
                    }
                },
                {
                    data: "pembimbing_nama"
                },
                {
                    data: "surat_permohonan",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/surat_permohonan/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "file_proposal",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/file_proposal/' + data +
                            '">' + data + '</a>';
                    }
                },
                {
                    data: "syarat_seminar",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/syarat_seminar/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "kartu_bimbingan",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/kartu_bimbingan/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return ` <div class = "text-center" >
                                            <a href = "` + base_url + `dosen/seminar/detail/` + data.id +
                            `" class="btn btn-sm btn-success">
                                <i class="fa fa-search"></i>
                            </a>
                        </div>
                        `;
                    }
                }
            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            }
        })
    }

    show();

    $(document).on('click', 'button.btn-hapus', function() {
        $('form#hapus .id').val($(this).data('id'));
    })

    $(document).on('submit', 'form#hapus', function(e) {
        e.preventDefault();
        const id = $('form#hapus .id').val();
        call('api/seminar/destroy/' + id).done(function(res) {
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
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>