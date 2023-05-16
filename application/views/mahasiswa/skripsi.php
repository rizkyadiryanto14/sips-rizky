<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Sidang Skripsi') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <div class="card-title">Sidang Skripsi</div>
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
                        <th>KRS Terakhir</th>
                        <th>File Skripsi</th>
                        <th>Formulir Pendaftaran</th>
                        <th>Kartu Bimbingan</th>
                        <th>Kwitansi Pembayaran</th>
                        <th>Pernyataan Lulus Mk wajib</th>
                        <th>Transkip Nilai</th>
                        <th>3 Sertifikat</th>
                        <th>Lembar Persetujuan Pembimbing</th>
                        <th>Surat Pernyataan Bauk</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>
<div class="modal fade" id="edit">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="edit">
                <div class="modal-header">
                    <div class="modal-title">Edit Sidang Skripsi</div>
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
                        <label>KRS Terakhir</label>
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
                        <label for="">Formulir Pendaftaran</label>
                        <input type="file" class="form-control" name="pilih-formulir" accept="application/pdf">
                        <input type="hidden" name="formulir">
                        <input type="hidden" name="def_formulir">
                    </div>
                    <div class="form-group">
                        <label>Kwitansi Pembayaran</label>
                        <input type="file" class="form-control" name="pilih-kwitansi" accept="application/pdf">
                        <input type="hidden" name="kwitansi">
                        <input type="hidden" name="def_kwitansi">
                    </div>
                    <div class="form-group">
                        <label>Lulus MK Wajib</label>
                        <input type="file" class="form-control" name="pilih-lulus_mkWajib" accept="application/pdf">
                        <input type="hidden" name="lulus_mkWajib">
                        <input type="hidden" name="def_lulus_mkWajib">
                    </div>
                    <div class="form-group">
                        <label>Kartu Bimbingan</label>
                        <input type="file" class="form-control" name="pilih-kartu_bimbingan" accept="application/pdf">
                        <input type="hidden" name="kartu_bimbingan">
                        <input type="hidden" name="def_kartu_bimbingan">
                    </div>
                    <div class="form-group">
                        <label>Transkrip</label>
                        <input type="file" class="form-control" name="pilih-transkip" accept="application/pdf">
                        <input type="hidden" name="transkip">
                        <input type="hidden" name="def_transkip">
                    </div>
                    <div class="form-group">
                        <label>3 Sertifikat</label>
                        <input type="file" class="form-control" name="pilih-sertifikat" accept="application/pdf">
                        <input type="hidden" name="sertifikat">
                        <input type="hidden" name="def_sertifikat">
                    </div>
                    <div class="form-group">
                        <label>Lembar Persetujuan Pembimbing</label>
                        <input type="file" class="form-control" name="pilih-lembar_persetujuan"
                            accept="application/pdf">
                        <input type="hidden" name="lembar_persetujuan">
                        <input type="hidden" name="def_lembar_persetujuan">
                    </div>
                    <div class="form-group">
                        <label>Surat Pernyataan Bebas Bauk</label>
                        <input type="file" class="form-control" name="pilih-bebas_bauk" accept="application/pdf">
                        <input type="hidden" name="bebas_bauk">
                        <input type="hidden" name="def_bebas_bauk">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary btn-konfirmasi">Simpan</button>
                </div>
            </form>
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
                        <label for="">Formulir Pendaftaran</label>
                        <input type="file" class="form-control" name="pilih-formulir" accept="application/pdf">
                        <input type="hidden" name="formulir">
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
                    data: "nim"
                },
                {
                    data: "nama_mahasiswa"
                },
                {
                    data: "judul_skripsi"
                },
                {
                    data: null,
                    render: function(data) {
                        if (data.nama_pembimbing != null) {
                            return data.nama_pembimbing;
                        } else {
                            return 'data belum di set';
                        }
                    }
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
                    data: null,
                    render: function(data) {
                        if (data.jadwal_skripsi != null) {
                            return data.jadwal_skripsi + ' - ' + data.jam_selesai
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
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/krs/' + data +
                            '">' + data + '</a>';
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
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/kwitansi/' +
                            data + '">' + data + '</a>';
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
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/transkip/' +
                            data + '">' + data + '</a>';
                    }
                },
                {
                    data: "sertifikat",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/sertifikat/' +
                            data + '">' + data + '</a>';
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
                    data: "bebas_bauk",
                    render: function(data) {
                        return '<a href="' + base_url + 'cdn/vendor/skripsi/bebas_bauk/' +
                            data + '">' + data + '</a>';
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
                            '" data-formulir="' + data.formulir + '" data-krs="' + data
                            .krs + '" data-kwitansi="' + data.kwitansi +
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
        });
    }

    show();

    $(document).on('submit', 'form#tambah', function(e) {
        e.preventDefault();
        call('api/skripsi/create', $(this).serialize()).done(function(res) {
            if (res.error == true) {
                notif(res.message, 'error', true);
                $('form#tambah [name]').val('');
                $('div#tambah').modal('hide');
            } else {
                notif(res.message, 'success');
                $('form#tambah [name]').val('');
                $('div#tambah').modal('hide');
                show();
            }
        })
    })

    // form tambah
    $(document).on('change', 'form#tambah [name=pilih-file_skripsi]', function() {
        read('form#tambah [name=pilih-file_skripsi]', function(data) {
            $('form#tambah [name=file_skripsi]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-krs]', function() {
        read('form#tambah [name=pilih-krs]', function(data) {
            $('form#tambah [name=krs]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-kwitansi]', function() {
        read('form#tambah [name=pilih-kwitansi]', function(data) {
            $('form#tambah [name=kwitansi]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-formulir]', function() {
        read('form#tambah [name=pilih-formulir]', function(data) {
            $('form#tambah [name=formulir]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-lulus_mkWajib]', function() {
        read('form#tambah [name=pilih-lulus_mkWajib]', function(data) {
            $('form#tambah [name=lulus_mkWajib]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-kartu_bimbingan]', function() {
        read('form#tambah [name=pilih-kartu_bimbingan]', function(data) {
            $('form#tambah [name=kartu_bimbingan]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-transkip]', function() {
        read('form#tambah [name=pilih-transkip]', function(data) {
            $('form#tambah [name=transkip]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-sertifikat]', function() {
        read('form#tambah [name=pilih-sertifikat]', function(data) {
            $('form#tambah [name=sertifikat]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-lembar_persetujuan]', function() {
        read('form#tambah [name=pilih-lembar_persetujuan]', function(data) {
            $('form#tambah [name=lembar_persetujuan]').val(data.result);
        })
    })

    $(document).on('change', 'form#tambah [name=pilih-bebas_bauk]', function() {
        read('form#tambah [name=pilih-bebas_bauk]', function(data) {
            $('form#tambah [name=bebas_bauk]').val(data.result);
        })
    })

    // end form tambah

    // form edit
    $(document).on('change', 'form#edit [name=pilih-file_skripsi]', function() {
        read('form#edit [name=pilih-file_skripsi]', function(data) {
            $('form#edit [name=file_skripsi]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-krs]', function() {
        read('form#edit [name=pilih-krs]', function(data) {
            $('form#edit [name=krs]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-kwitansi]', function() {
        read('form#edit [name=pilih-kwitansi]', function(data) {
            $('form#edit [name=kwitansi]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-formulir]', function() {
        read('form#edit [name=pilih-formulir]', function(data) {
            $('form#edit [name=formulir]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-lulus_mkWajib]', function() {
        read('form#edit [name=pilih-lulus_mkWajib]', function(data) {
            $('form#edit [name=lulus_mkWajib]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-kartu_bimbingan]', function() {
        read('form#edit [name=pilih-kartu_bimbingan]', function(data) {
            $('form#edit [name=kartu_bimbingan]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-transkip]', function() {
        read('form#edit [name=pilih-transkip]', function(data) {
            $('form#edit [name=transkip]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-sertifikat]', function() {
        read('form#edit [name=pilih-sertifikat]', function(data) {
            $('form#edit [name=sertifikat]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-lembar_persetujuan]', function() {
        read('form#edit [name=pilih-lembar_persetujuan]', function(data) {
            $('form#edit [name=lembar_persetujuan]').val(data.result);
        })
    })

    $(document).on('change', 'form#edit [name=pilih-bebas_bauk]', function() {
        read('form#edit [name=pilih-bebas_bauk]', function(data) {
            $('form#edit [name=bebas_bauk]').val(data.result);
        })
    })

    // end form edit

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
    $('form#edit [name=def_file_skripsi]').val($(this).data('file_skripsi'));
    $('form#edit [name=def_formulir]').val($(this).data('formulir'));
    $('form#edit [name=def_krs]').val($(this).data('krs'));
    $('form#edit [name=def_kwitansi]').val($(this).data('kwitansi'));
    $('form#edit [name=def_kartu_bimbingan]').val($(this).data('kartu_bimbingan'));
    $('form#edit [name=def_lulus_mkWajib]').val($(this).data('lulus_mkWajib'));
    $('form#edit [name=def_transkip]').val($(this).data('transkip'));
    $('form#edit [name=def_sertifikat]').val($(this).data('sertifikat'));
    $('form#edit [name=def_lembar_persetujuan]').val($(this).data('lembar_persetujuan'));
    $('form#edit [name=def_bebas_bauk]').val($(this).data('bebas_bauk'));
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
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>