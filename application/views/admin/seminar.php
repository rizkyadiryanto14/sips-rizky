<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Seminar') ?>

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
        <div class="card-title">Data Seminar</div>
    </div>
    <div class="col text-right">
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambah">
            <i class="fa fa-plus"></i>
            Tambah
        </button>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover" id="data-seminar">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NIM</th>
                        <th>Mahasiswa</th>
                        <th>Nama Prodi</th>
                        <th>Proposal</th>
                        <th>Tanggal</th>
                        <th>Tempat</th>
                        <th>Dosen Penguji</th>
                        <th>Dosen Pembimbing</th>
                        <th>Surat Permohonan</th>
                        <th>File Proposal</th>
                        <th>Syarat Seminar</th>
                        <th>Kartu Bimbingan</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal fade" id="tambah">
    <div class="modal-dialog">
        <div class="modal-content modal-lg">
            <form id="tambah">
                <div class="modal-header">
                    <div class="modal-title">Tambah Seminar</div>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Proposal</label>
                        <select name="proposal_mahasiswa_id" class="form-control">
                            <option value="">- Pilih Proposal -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Dosen Pembimbing</label>
                        <select name="dosen_id" id="" class="form-control">
                            <option value="">- Pilih Dosen Pembimbing -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Surat Permohonan</label>
                        <input type="file" class="form-control" name="pilih-surat_permohonan" accept="application/pdf">
                        <input type="hidden" name="surat_permohonan">
                    </div>
                    <div class="form-group">
                        <label>File Proposal</label>
                        <input type="file" class="form-control" name="pilih-file_proposal" accept="application/pdf">
                        <input type="hidden" name="file_proposal">
                    </div>
                    <div class="form-group">
                        <label>Syarat Seminar</label>
                        <input type="file" class="form-control" name="pilih-syarat_seminar" accept="application/pdf">
                        <input type="hidden" name="syarat_seminar">
                    </div>
                    <div class="form-group">
                        <label>Kartu Bimbingan</label>
                        <input type="file" class="form-control" name="pilih-kartu_bimbingan" accept="application/pdf">
                        <input type="hidden" name="kartu_bimbingan">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
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
base_url = '<?= base_url() ?>'
$(document).ready(function() {

    // $.ajax({
    //     url: base_url + 'getData/proposal_mahasiswa',
    //     type: 'post',
    //     data: {
    //         mahasiswa_id: <?= $this->session->userdata('id') ?>
    //     },
    //     dataType: 'json',
    //     success: function(res) {
    //         proposal = `<option value="">- Pilih Proposal -</option>`;
    //         $.each(res, function(i, item) {
    //             if (item.status == '1') {
    //                 proposal += `<option value="` + item.id + `">` + item.judul +
    //                     `</option>`;
    //             }
    //         })
    //         $('[name=proposal_mahasiswa_id]').html(proposal);
    //     }
    // })
    getDataSelect()
    call('api/proposal_mahasiswa').done(function(req) {
        proposal = `<option value="">- Pilih Proposal -</option>`;
        if (req.data) {
            req.data.forEach(obj => {
                if (obj.status == 1) {
                    proposal += `<option value="` + obj.proposal_mahasiswa_id +
                        `">` + obj.judul + `</option>`;
                }
            })
        }
        $('[name=proposal_mahasiswa_id]').html(proposal);
    })

    // call('api/proposal_mahasiswa').done(function(res) {
    //     proposal = `<option value="">- Pilih Proposal -</option>`;
    //     if (res.data) {
    //         res.data.forEach(obj => {
    //             proposal += `<option value="` + item.id + `">` + item.judul +
    //                 `</option>`;
    //         })
    //     }
    //     $('[name=proposal_mahasiswa_id]').html(proposal);
    // })

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
                    user_id: "<?= $this->session->userdata('id') ?>"
                },
                "dataSrc": "data"
            },
            "columns": [{
                    data: null,
                    render: function(data, typw, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1
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
                            return '<span class="badge badge-danger">Data Belum di set</span>';
                        }
                    }

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
                        if (data.pembimbing_nama != null) {
                            return data.pembimbing_nama;
                        } else {
                            return '<span class="badge badge-danger">Data Belum di set</span>';
                        }
                    }
                },
                {
                    data: "surat_permohonan",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/surat_permohonan/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "file_proposal",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/file_proposal/' + data +
                            '">' + data + '</a>';
                    }
                },
                {
                    data: "syarat_seminar",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/syarat_seminar/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "kartu_bimbingan",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/kartu_bimbingan/' +
                            data + '">' + data + '</a>';
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
                        return `
                        <div class="text-center">
                            <a href="` + base_url + `admin/seminar/detail/` + data.id + `" class="btn btn-sm btn-success">
                                <i class="fa fa-search"></i>
                            </a>
                            <a href="` + base_url + `admin/seminar/status/` + data.id +
                            `" class="btn btn-sm btn-info ${data.tempat != null ? 'd-none' : '' }">
                                <i class="fa fa-check"></i>
                            </a>
                            <button class="btn btn-danger btn-hapus btn-sm" type="button" data-toggle="modal" data-target="#hapus" data-id="` +
                            data
                            .id + `">
                                <i class="fa fa-trash"></i>
                            </button>
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

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        call('api/seminar/create', $(this).serialize()).done(function(res) {
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
                data += '<option value="' + item.id + '">(' + item.nim + ') ' + item
                    .nama +
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