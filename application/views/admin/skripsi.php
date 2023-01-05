<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Sidang Skripsi') ?>

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
        <div class="row">
            <div class="col">
                <div class="card-title">Data Sidang Skripsi</div>
            </div>
            <div class="col text-right">
                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambah">
                    <i class="fa fa-plus"></i>
                    Tambah
                </button>
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
                        <th>KRS</th>
                        <th>File Skripsi</th>
                        <th>Formulir</th>
                        <th>kwitansi</th>
                        <th>Lulus Mk Wajib</th>
                        <th>Kartu Bimbingan</th>
                        <th>Transkip</th>
                        <th>3 Sertifikat</th>
                        <th>Surat Bebas Bauk</th>
                        <th>Lembar Persetujuan Pembimbing</th>
                        <th>Aksi</th>
                        <th>Atur jadwal_skripsi</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal fade" id="tambah">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="tambah">
                <div class="modal-header">
                    <div class="modal-title">Tambah Sidang Skripsi</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="mahasiswa_id" value="<?= $this->session->userdata('id'); ?>">
                    <div class="form-group">
                        <label for="">Nama Mahasiswa</label>
                        <input type="text" name="mahasiswa_id" id="mahasiswa_id">
                    </div>
                    <div class="form-group">
                        <label>Judul Skripsi</label>
                        <input type="text" class="form-control" name="judul_skripsi"
                            placeholder="Masukkan Judul Skripsi">
                    </div>
                    <div class="form-group">
                        <label>Pembimbing</label>
                        <select name="dosen_id" class="form-control">
                            <option value="">- Pilih Pembimbing -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Penguji</label>
                        <select name="dosen_penguji_id" class="form-control">
                            <option value="">- Pilih Penguji -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>KRS Terakhir</label>
                        <input type="file" class="form-control" name="pilih-krs" accept="application/pdf">
                        <input type="hidden" name="krs">
                    </div>
                    <div class="form-group">
                        <label>File Skripsi</label>
                        <input type="file" class="form-control" name="pilih-file_skripsi" accept="application/pdf">
                        <input type="hidden" name="file_skripsi">
                    </div>
                    <div class="form-group">
                        <label>Kwitansi Pembayaran</label>
                        <input type="file" class="form-control" name="pilih-kwitansi" accept="application/pdf">
                        <input type="hidden" name="kwitansi">
                    </div>
                    <div class="form-group">
                        <label>Lulus MK Wajib</label>
                        <input type="file" class="form-control" name="pilih-lulus_mkWajib" accept="application/pdf">
                        <input type="hidden" name="lulus_mkWajib">
                    </div>
                    <div class="form-group">
                        <label>Kartu Bimbingan</label>
                        <input type="file" class="form-control" name="pilih-kartu_bimbingan" accept="application/pdf">
                        <input type="hidden" name="kartu_bimbingan">
                    </div>
                    <div class="form-group">
                        <label>Transkrip</label>
                        <input type="file" class="form-control" name="pilih-transkip" accept="application/pdf">
                        <input type="hidden" name="transkip">
                    </div>
                    <div class="form-group">
                        <label>3 Sertifikat</label>
                        <input type="file" class="form-control" name="pilih-sertifikat" accept="application/pdf">
                        <input type="hidden" name="sertifikat">
                    </div>
                    <div class="form-group">
                        <label>Lembar Persetujuan Pembimbing</label>
                        <input type="file" class="form-control" name="pilih-lembar_persetujuan"
                            accept="application/pdf">
                        <input type="hidden" name="lembar_persetujuan">
                    </div>
                    <div class="form-group">
                        <label>Surat Pernyataan Bebas Bauk</label>
                        <input type="file" class="form-control" name="pilih-bebas_bauk" accept="application/pdf">
                        <input type="hidden" name="bebas_bauk">
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
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="edit">
                <div class="modal-header">
                    <div class="modal-title">Edit Proposal</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <input type="hidden" name="mahasiswa_id" value="<?= $this->session->userdata('id') ?>">
                    <div class="form-group">
                        <label>Judul Skripsi</label>
                        <input type="text" class="form-control" name="judul_skripsi"
                            placeholder="Masukkan Judul Skripsi">
                    </div>
                    <div class="form-group">
                        <label>Pembimbing</label>
                        <select name="dosen_id" class="form-control">
                            <option value="">- Pilih Pembimbing -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Penguji</label>
                        <select name="dosen_penguji_id" class="form-control">
                            <option value="">- Pilih Penguji -</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Jadwal Skripsi</label>
                        <input name="jadwal_skripsi" type="text" class="form-control dateTime"
                            placeholder="Pilih Jadwal Skripsi" readonly>
                    </div>
                    <div class="form-group">
                        <label>Tempat</label>
                        <input type="text" class="form-control" name="tempat" placeholder="Masukkan Tempat">
                    </div>
                    <div class="form-group">
                        <label>krs</label>
                        <input type="file" class="form-control" name="pilih-krs" accept="application/pdf">
                        <input type="hidden" name="krs">
                        <input type="hidden" name="def_krs">
                    </div>
                    <div class="form-group">
                        <label>File Skripsi</label>
                        <input type="file" class="form-control" name="pilih-file_skripsi" accept="application/pdf">
                        <input type="hidden" name="file_skripsi">
                        <input type="hidden" name="def_file_skripsi">
                    </div>
                    <div class="form-group">
                        <label>Formulir</label>
                        <input type="file" class="form-control" name="pilih-formulir" accept="application/pdf">
                        <input type="hidden" name="formulir">
                        <input type="hidden" name="def_formulir">
                    </div>
                    <div class="form-group">
                        <label>kwitansi</label>
                        <input type="file" class="form-control" name="pilih-kwitansi" accept="application/pdf">
                        <input type="hidden" name="kwitansi">
                        <input type="hidden" name="def_kwitansi">
                    </div>
                    <div class="form-group">
                        <label>lulus_MK Wajib</label>
                        <input type="file" class="form-control" name="pilih-lulus_mkWajib" accept="application/pdf">
                        <input type="hidden" name="lulus_mkWajib">
                        <input type="hidden" name="def_lulus_mkWajib">
                    </div>
                    <div class="form-group">
                        <label>kartu_bimbingan</label>
                        <input type="file" class="form-control" name="pilih-kartu_bimbingan" accept="application/pdf">
                        <input type="hidden" name="kartu_bimbingan">
                        <input type="hidden" name="def_kartu_bimbingan">
                    </div>
                    <div class="form-group">
                        <label>transkip</label>
                        <input type="file" class="form-control" name="pilih-transkip" accept="application/pdf">
                        <input type="hidden" name="transkip">
                        <input type="hidden" name="def_transkip">
                    </div>
                    <div class="form-group">
                        <label>sertifikat</label>
                        <input type="file" class="form-control" name="pilih-sertifikat" accept="application/pdf">
                        <input type="hidden" name="sertifikat">
                        <input type="hidden" name="def_sertifikat">
                    </div>
                    <div class="form-group">
                        <label>surat_bebas_bauk</label>
                        <input type="file" class="form-control" name="pilih-bebas_bauk" accept="application/pdf">
                        <input type="hidden" name="bebas_bauk">
                        <input type="hidden" name="def_bebas_bauk">
                    </div>
                    <div class="form-group">
                        <label>surat_lembar_persetujuan</label>
                        <input type="file" class="form-control" name="pilih-lembar_persetujuan"
                            accept="application/pdf">
                        <input type="hidden" name="lembar_persetujuan">
                        <input type="hidden" name="def_lembar_persetujuan">
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
                    <div class="modal-title">Hapus Penelitian</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <p>Anda yakin menghapus penelitian terpilih ?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Hapus</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="setujui">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="setujui">
                <div class="modal-header">
                    <div class="modal-title">Status Skripsi</div>
                </div>
                <div class="modal-body">
                    <input type="hidden" class="id">
                    <input type="hidden" class="status">
                    <p>Anda yakin <span class="status">mengetujui / batal menyetujui</span> skripsi <strong
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
                "url": base_url + "api/skripsi/admin_index",
                "method": "POST",
                "data": {
                    user_id: "<?= $this->session->userdata('id') ?>"
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
                            <span class="badge badge-success">Telah Diverifikasi Dospem</span>\
                            ';
                        } else {
                            status = '\
                            <span class="badge badge-danger">Belum Diverifikasi Dospem</span>\
                            ';
                        }
                        return '\
                            <div class="text-center">' + status + '</div>\
                            ';
                    }
                },
                {
                    data: "nim"
                },
                {
                    data: "nama_mahasiswa"
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
                {
                    data: "krs",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/krs/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "file_skripsi",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/file_skripsi/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "formulir",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/formulir/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "kwitansi",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/kwitansi/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "lulus_mkWajib",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/lulus_mkWajib/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "kartu_bimbingan",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/kartu_bimbingan/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "transkip",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/transkip/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "sertifikat",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/sertifikat/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "bebas_bauk",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/bebas_bauk/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: "lembar_persetujuan",
                    render: function(data) {
                        return '<a href="' + base_url +
                            'cdn/vendor/skripsi/lembar_persetujuan/' + data + '">' + data +
                            '</a>';
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return '<div class="text-center">\
                            <button class="btn btn-sm btn-info btn-edit" type="button" data-toggle="modal" data-target="#edit" data-id="' +
                            data.id + '" data-mahasiswa_id="' + data.mahasiswa_id +
                            '" data-judul_skripsi="' + data.judul_skripsi +
                            '" data-jadwal_skripsi="' + data.jadwal_skripsi +
                            '" data-dosen_id="' + data.dosen_id +
                            '" data-dosen_penguji_id="' + data.dosen_penguji_id +
                            '" data-file_skripsi="' + data.file_skripsi +
                            '" data-krs="' + data.krs + '" data-formulir="' + data
                            .formulir + '" data-kwitansi="' + data
                            .kwitansi + '" data-kartu_bimbingan="' + data.kartu_bimbingan +
                            '" data-transkip="' + data.transkip + '" data-lulus_mkWajib="' +
                            data.lulus_mkWajib + '" data-sertifikat="' +
                            '" data-bebas_bauk="' + data.bebas_bauk +
                            '" data-lembar_persetujuan="' + data.lembar_persetujuan +
                            data.sertifikat +
                            '">\
                                <i class="fa fa-pen"></i>\
                            </button>\
    						<button class="btn btn-danger btn-sm btn-hapus" type="button" data-toggle="modal" data-target="#hapus" data-id="' +
                            data.id + '">\
    							<i class="fa fa-trash"></i>\
    						</button>\
    					</div>'
                    }
                },
                {
                    data: null,
                    render: function(data) {
                        return `
                        <div class="text-center">
                            <a href="` + base_url + `admin/skripsi/status/` + data.id +
                            `" class="btn btn-sm btn-info ${data.tempat != null ? 'd-none' : '' }">
                                Atur Jadwal</i>
                            </a>
                        </div>
                        `;
                    }
                }
            ],
            "language": {
                "zeroRecords": "data tidak tersedia"
            }
        });
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        call('api/skripsi/create', $(this).serialize()).done(function(res) {
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

    $(document).on('change', 'form#tambah [name=pilih-file_skripsi]', function() {
        read('[name=pilih-file_skripsi]', function(data) {
            $('[name=file_skripsi]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-krs]', function() {
        read('[name=pilih-krs]', function(data) {
            $('[name=krs]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-formulir]', function() {
        read('[name=pilih-formulir]', function(data) {
            $('[name=formulir]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-kwitansi]', function() {
        read('[name=pilih-kwitansi]', function(data) {
            $('[name=kwitansi]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-kartu_bimbingan]', function() {
        read('[name=pilih-kartu_bimbingan]', function(data) {
            $('[name=kartu_bimbingan]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-transkip]', function() {
        read('[name=pilih-transkip]', function(data) {
            $('[name=transkip]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-sertifikat]', function() {
        read('[name=pilih-sertifikat]', function(data) {
            $('[name=sertifikat]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-bebas_bauk]', function() {
        read('[name=pilih-bebas_bauk]', function(data) {
            $('[name=bebas_bauk]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-lembar_persetujuan]', function() {
        read('[name=pilih-lembar_persetujuan]', function(data) {
            $('[name=lembar_persetujuan]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-lulus_mkWajib]', function() {
        read('[name=pilih-lulus_mkWajib]', function(data) {
            $('[name=lulus_mkWajib]').val(data.result);
        })
    })

    $(document).on('click', 'button.btn-hapus', function() {
        $('form#hapus .id').val($(this).data('id'));
    })

    $(document).on('submit', 'form#hapus', function(e) {
        e.preventDefault();
        const id = $('form#hapus .id').val();
        call('api/skripsi/destroy/' + id).done(function(res) {
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

$(document).on('click', 'button.btn-edit', function() {
    $('form#edit .id').val($(this).data('id'));
    $('form#edit [name=mahasiswa_id]').val($(this).data('mahasiswa_id'));
    $('form#edit [name=judul_skripsi]').val($(this).data('judul_skripsi'));
    $('form#edit [name=dosen_id]').val($(this).data('dosen_id'));
    $('form#edit [name=dosen_penguji_id]').val($(this).data('dosen_penguji_id'));
    $('form#edit [name=jadwal_skripsi]').val($(this).data('jadwal_skripsi'));
    $('form#edit [name=def_file_skripsi]').val($(this).data('file_skripsi'));
    $('form#edit [name=def_sk_tim]').val($(this).data('sk_tim'));
    $('form#edit [name=def_persetujuan]').val($(this).data('persetujuan'));
    $('form#edit [name=def_bukti_konsultasi]').val($(this).data('bukti_konsultasi'));
})

$(document).on('submit', 'form#edit', function(e) {
    e.preventDefault();
    var id = $('form#edit .id').val();
    call('api/skripsi/update/' + id, $(this).serialize()).done(function(req) {
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

$(document).on('click', 'button.btn-setuju', function() {
    $('form#setujui .id').val($(this).data('id'));
    $('form#setujui input.status').val($(this).data('status'));
    $('form#setujui span.status').html(($(this).data('status') == '1') ? 'batal menyetujui' : 'menyetujui');
    $('form#setujui .judul').html($(this).data('judul_skripsi'));
})

$(document).on('submit', 'form#setujui', function(e) {
    e.preventDefault();
    $(".btn-konfirmasi").attr('disabled', true).html('Loading...')
    const id = $('form#setujui .id').val();
    call('api/skripsi/' + (($('form#setujui .status').val() == '1') ? 'disagree' : 'agree') + '/' + id).done(
        function(req) {
            if (req.error == true) {
                notif(req.message, 'error', true);
                $(".btn-konfirmasi").attr('disabled', false).html('Konfirmasi')
            } else {
                notif(req.message, 'success');
                $('div#setujui').modal('hide');
                show();
                $(".btn-konfirmasi").attr('disabled', false).html('Konfirmasi')
            }
        })
})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>