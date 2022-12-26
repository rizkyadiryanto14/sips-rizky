<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Seminar Proposal') ?>

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
                <div class="card-title">Data Seminar Proposal</div>
            </div>
            <div class="col text-right">
                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambah">
                    <i class="fa fa-plus"></i>
                    Tambah
                </button>
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
                        <th>Surat Permohonan</th>
                        <th>File Proposal</th>
                        <th>Syarat_Seminar</th>
                        <th>Kartu Bimbingan</th>
                        <th>status</th>
                        <th>Berita Acara</th>
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
                    <input type="hidden" name="mahasiswa_id" value="<?= $this->session->userdata('id') ?>">
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

<div class="modal fade" id="edit">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <form id="edit">
                <div class="modal-header">
                    <div class="modal-title">Edit Seminar</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <input type="hidden" name="mahasiswa_id" value="<?= $this->session->userdata('id') ?>">
                    <div class="form-group">
                        <label>Proposal</label>
                        <select name="proposal_mahasiswa_id" class="form-control">
                            <option value="">- Pilih Proposal -</option>
                        </select>
                    </div>
                    <div class=" form-group">
                        <label for="">Dosen Pembimbing</label>
                        <select name="dosen_id" id="" class="form-control">
                            <option value="">- Pilih Dosen Pembimbing -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Surat Permohonan</label>
                        <input type="file" class="form-control" name="pilih-surat_permohonan" accept="application/pdf">
                        <input type="hidden" name="surat_permohonan">
                        <input type="hidden" name="def_surat_permohonan">
                    </div>
                    <div class="form-group">
                        <label>File Proposal</label>
                        <input type="file" class="form-control" name="pilih-file_proposal" accept="application/pdf">
                        <input type="hidden" name="file_proposal">
                        <input type="hidden" name="def_file_proposal">
                    </div>
                    <div class="form-group">
                        <label>Syarat Seminar</label>
                        <input type="file" class="form-control" name="pilih-syarat_seminar" accept="application/pdf">
                        <input type="hidden" name="syarat_seminar">
                        <input type="hidden" name="def_syarat_seminar">
                    </div>
                    <div class="form-group">
                        <label>Kartu Bimbingan</label>
                        <input type="file" class="form-control" name="pilih-kartu_bimbingan" accept="application/pdf">
                        <input type="hidden" name="kartu_bimbingan">
                        <input type="hidden" name="def_kartu_bimbingan">
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
                            return '<span class="badge badge-danger">Data belum di set</span>';
                        }
                    }

                },
                {
                    data: null,
                    render: function(data) {
                        if (data.tempat != null) {
                            return data.tempat
                        } else {
                            return '<span class="badge badge-danger">Data belum di set</span>';
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
                        if (data.hasil_seminar_status == 1 || data.hasil_seminar_status ==
                            2) {
                            return `
                        <div class="text-center">
                            <a href="` + base_url + `mahasiswa/seminar/cetak/` + data.id +
                                `" class="btn btn-sm btn-primary" target="_blank" >
                                Cetak Berita Acara</i>
                            </a>
                        </div>
                        `;
                        } else {
                            return `
                        <div class="text-center">
                            <a href="` + base_url + `mahasiswa/seminar/cetak/` + data.id +
                                `" class="btn btn-sm btn-primary" target="_blank" disabled="disabled">
                                Cetak Berita Acara</i>
                            </a>
                        </div>
                        `;
                        }
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return '<div class="text-center">\
                        \<a href="' + base_url + 'mahasiswa/seminar/detail/' + data.id +
                            '" class="btn btn-sm btn-success"><i class="fa fa-info-circle"></i></a>\
                            <button class="btn btn-sm btn-info btn-edit" type="button" data-toggle="modal" data-target="#edit" data-id="' +
                            data.id +
                            '" data-proposal_mahasiswa_id="' + data.proposal_mahasiswa_id +
                            '" data-syarat_seminar="' + data.syarat_seminar +
                            '" data-dosen_id="' + data.dosen_id +
                            '" data-kartu_bimbingan="' + data.kartu_bimbingan +
                            '" data-surat_permohonan="' + data.surat_permohonan +
                            '">\
                                <i class="fa fa-pen"></i>\
                            </button>\
    						<button class="btn btn-danger btn-sm btn-hapus" type="button" data-toggle="modal" data-target="#hapus" data-id="' +
                            data.id + '">\
    							<i class="fa fa-trash"></i>\
    						</button>\
    					</div>'
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

    $(document).on('change', 'form#tambah [name=pilih-file_proposal]', function() {
        read('form#tambah [name=pilih-file_proposal]', function(data) {
            $('form#tambah [name=file_proposal]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-surat_permohonan]', function() {
        read('form#tambah [name=pilih-surat_permohonan]', function(data) {
            $('form#tambah [name=surat_permohonan]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-syarat_seminar]', function() {
        read('form#tambah [name=pilih-syarat_seminar]', function(data) {
            $('form#tambah [name=syarat_seminar]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-kartu_bimbingan]', function() {
        read('form#tambah [name=pilih-kartu_bimbingan]', function(data) {
            $('form#tambah [name=kartu_bimbingan]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-surat_permohonan]', function() {
        read('form#edit [name=pilih-surat_permohonan]', function(data) {
            $('form#edit [name=surat_permohonan]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-file_proposal]', function() {
        read('form#edit [name=pilih-file_proposal]', function(data) {
            $('form#edit [name=file_proposal]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-kartu_bimbingan]', function() {
        read('form#edit [name=pilih-kartu_bimbingan]', function(data) {
            $('form#edit [name=kartu_bimbingan]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-syarat_seminar]', function() {
        read('form#edit [name=pilih-syarat_seminar]', function(data) {
            $('form#edit [name=syarat_seminar]').val(data.result);
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

$(document).on('click', 'button.btn-edit', function() {
    $('form#edit .id').val($(this).data('id'));
    $('form#edit [name=proposal_mahasiswa_id]').val($(this).data('proposal_mahasiswa_id'));
    $('form#edit [name=dosen_id]').val($(this).data('dosen_id'));
    $('form#edit [name=def_surat_permohonan]').val($(this).data('surat_permohonan'));
    $('form#edit [name=def_file_proposal]').val($(this).data('file_proposal'));
    $('form#edit [name=def_kartu_bimbingan]').val($(this).data('kartu_bimbingan'));
    $('form#edit [name=def_syarat_seminar]').val($(this).data('syarat_seminar'));
})

$(document).on('submit', 'form#edit', function(e) {
    e.preventDefault();
    var id = $('form#edit .id').val();
    call('api/seminar/update/' + id, $(this).serialize()).done(function(req) {
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
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>