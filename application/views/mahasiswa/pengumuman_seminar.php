<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Seminar') ?>

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
                <div class="card-title">Data Seminar</div>
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
                            <th>Dosen Penguji</th>
                            <th>Dosen Pembimbing</th>
                            <!-- <th>Surat Permohonan</th>
                            <th>File Proposal</th>
                            <th>Syarat_Seminar</th>
                            <th>Kartu Bimbingan</th> -->
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
                                return '<span class="badge badge-danger">Belum Ada Pengumuman</span>';
                            }
                        }

                    },
                    {
                        data: null,
                        render: function(data) {
                            if (data.tempat != null) {
                                return data.tempat
                            } else {
                                return '<span class="badge badge-danger">Belum Pengumuman</span>';
                            }
                        }
                    },
                    {
                        data: null,
                        render: function(data) {
                            if (data.pembimbing_nama != null) {
                                return data.pembimbing_nama
                            } else {
                                return '<span class="badge badge-danger">Data belum di set</span>';
                            }
                        }
                    },
                    {

                        data: null,
                        render: function(data) {
                            if (data.penguji_nama != null) {
                                return data.penguji_nama
                            } else {
                                return '<span class="badge badge-danger">Data Belum di set</span>'
                            }
                        }
                    },
                    // {
                    //     data: "surat_permohonan",
                    //     render: function(data) {
                    //         return '<a href="' + base_url + 'cdn/vendor/surat_permohonan/' +
                    //             data + '">' + data + '</a>';
                    //     }
                    // },
                    // {
                    //     data: "file_proposal",
                    //     render: function(data) {
                    //         return '<a href="' + base_url + 'cdn/vendor/file_proposal/' +
                    //             data +
                    //             '">' + data + '</a>';
                    //     }
                    // },
                    // {
                    //     data: "syarat_seminar",
                    //     render: function(data) {
                    //         return '<a href="' + base_url + 'cdn/vendor/syarat_seminar/' +
                    //             data + '">' + data + '</a>';
                    //     }
                    // },
                    // {
                    //     data: "kartu_bimbingan",
                    //     render: function(data) {
                    //         return '<a href="' + base_url + 'cdn/vendor/kartu_bimbingan/' +
                    //             data + '">' + data + '</a>';
                    //     }
                    // },
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
                            if (data.hasil_seminar_status == 1 || data
                                .hasil_seminar_status ==
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
                            return `
                        <div class="text-center">
                            <a href="` + base_url + `mahasiswa/seminar/detail/` + data.id +
                                `" class="btn btn-sm btn-success">
                                <i class="fa fa-search"></i>
                            </a>
                            <button class="btn btn-danger btn-hapus btn-sm" type="button" data-toggle="modal" data-target="#hapus" data-id="` +
                                data.id + `">
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

        $(document).on('change', '[name=pilih-file_proposal]', function() {
            read('[name=pilih-file_proposal]', function(data) {
                $('[name=file_proposal]').val(data.result);
            })
        })

        $(document).on('change', '[name=pilih-surat_permohonan]', function() {
            read('[name=pilih-surat_permohonan]', function(data) {
                $('[name=surat_permohonan]').val(data.result);
            })
        })

        $(document).on('change', '[name=pilih-syarat_seminar]', function() {
            read('[name=pilih-syarat_seminar]', function(data) {
                $('[name=syarat_seminar]').val(data.result);
            })
        })

        $(document).on('change', '[name=pilih-kartu_bimbingan]', function() {
            read('[name=pilih-kartu_bimbingan]', function(data) {
                $('[name=kartu_bimbingan]').val(data.result);
            })
        })

        $(document).on('click', 'button.btn-hapus', function() {
            $('form#hapus .id').val($(this).data('id'));
        })

        $(document).on('submit', 'form#hapus', function(e) {
            e.preventDefault();
            const id = $('form#hapus .id').val();
            call('api/seminar_mahasiswa/destroy/' + id).done(function(res) {
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
    </script>
    <?php $this->app->endSection('script') ?>

    <?php $this->app->init() ?>