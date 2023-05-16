<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Seminar') ?>

<?php $this->app->section() ?>
<div class="card">
    <form id="edit">
        <div class="card-header">
            <div class="card-title">Detail Seminar</div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <tr>
                        <td>Proposal</td>
                        <th class="proposal_mahasiswa_judul">-</th>
                    </tr>
                    <tr>
                        <td>Mahasiswa</td>
                        <th class="mahasiswa_nama">-</th>
                    </tr>
                    <tr>
                        <td>Waktu Seminar</td>
                        <th class="tanggal_jam">0000-00-00 00:00 AM</th>
                    </tr>
                    <tr>
                        <td>Tempat</td>
                        <th class="tempat">-</th>
                    </tr>
                    <tr>
                        <td>Syarat Seminar</td>
                        <th class="syarat_seminar">-</th>
                    </tr>
                    <tr>
                        <td>File Proposal</td>
                        <th class="file_proposal">-</th>
                    </tr>
                    <tr>
                        <td>Surat Permohonan</td>
                        <th class="surat_permohonan">-</th>
                    </tr>
                    <tr>
                        <td>Kartu bimbingan</td>
                        <th class="kartu_bimbingan">-</th>
                    </tr>
                    <tr>
                        <td>Dosen Pembimbing</td>
                        <th class="pembimbing_nama"></th>
                    </tr>
                    <tr>
                        <td>Dosen Penguji</td>
                        <th class="penguji_nama"></th>
                    </tr>
                    <tr>
                        <td>Berita Acara</td>
                        <th class="berita_acara"></th>
                    </tr>
                    <!-- <tr>
                        <td>Status</td>
                        <th class="status"></th>
                    </tr> -->
                    <tr>
                        <td>Status</td>
                        <th>
                            <select name="status" class="form-control">
                                <option hidden value="1">Lanjut (Sempurna)</option>
                                <option hidden value="2">Lanjut (Perbaikan)</option>
                                <option hidden value="3">Ditolak/Belum Dinilai</option>
                            </select>
                        </th>
                    </tr>
                </table>
                <input type="hidden" name="berita_acara">
                <input type="hidden" name="masukan">
                <input type="hidden" name="email">
                <input type="hidden" name="def_status">
            </div>
        </div>
        <div class="card-footer text-right">
            <a href="<?= base_url() ?>admin/seminar" class="btn btn-default">Kembali</a>
            <button type="submit" class="btn btn-primary btn-act">Simpan</button>
        </div>
    </form>
</div>
<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<script>
var seminar_id = '<?= $seminar_id ?>'

$(document).ready(function() {

    function show() {
        call('api/seminar/details/' + seminar_id).done(function(res) {
            if (res.error == true) {
                notif(res.message, 'warning').then(function() {
                    window.location = base_url + 'mahasiswa/seminar';
                })
            } else {
                $('.proposal_mahasiswa_judul').html(res.data.proposal_mahasiswa_judul);
                $('.mahasiswa_nama').html(res.data.mahasiswa_nama);
                $('.tanggal_jam').html(res.data.tanggal + ' ' + res.data.jam);
                $('.pembimbing_nama').html(res.data.pembimbing_nama);
                $('.penguji_nama').html('1. ' + res.data.dosen_penguji_id + '<br>2. ' + res.data
                    .dosen_penguji2_id);
                $('.tempat').html(res.data.tempat);
                $('.syarat_seminar').html(`<a href="` + base_url + `cdn/vendor/syarat_seminar/` + res
                    .data.syarat_seminar + `">` + res.data.syarat_seminar + `</a>`);
                $('.file_proposal').html(`<a href="` + base_url + `cdn/vendor/file_proposal/` + res.data
                    .file_proposal + `">` + res.data.file_proposal + `</a>`);
                $('.surat_permohonan').html(`<a href="` + base_url + `cdn/vendor/surat_permohonan/` +
                    res.data.surat_permohonan + `">` + res.data.surat_permohonan + `</a>`);
                $('.kartu_bimbingan').html(`<a href="` + base_url + `cdn/vendor/kartu_bimbingan/` + res
                    .data.kartu_bimbingan + `">` + res.data.kartu_bimbingan + `</a>`);
                $('.berita_acara').html((res.data.hasil.berita_acara) ? `<a href="` + base_url +
                    `cdn/vendor/berita_acara/` + res.data.hasil.berita_acara + `">` + res.data.hasil
                    .berita_acara + `</a>` :
                    '<input type="file" accept="application/pdf" class="form-control" name="pilih-berita_acara">'
                );
                // if (res.data.hasil.status == '1') {
                //     status = "1";
                // } else if (res.data.hasil.status == '2') {
                //     status = "2";
                // } else {
                //     status = "3";
                // }

                $('[name=status]').val(res.data.hasil.status);
                $('[name=email]').val(res.data.email);
                $('[name=def_status]').val(res.data.hasil.status);
            }
        })
    }

    show()

    $(document).on('change', '[name=pilih-berita_acara]', function() {
            read('[name=pilih-berita_acara]', function(data) {
                $('[name=berita_acara]').val(data.result);
            })
        }),

        $(document).on('change', '[name=pilih-masukan]', function() {
            read('[name=pilih-masukan]', function(data) {
                $('[name=masukan]').val(data.result);
            })
        })

    $(document).on('submit', 'form#edit', function(e) {
        e.preventDefault();
        $(".btn-act").attr('disabled', true).html('Loading...')
        call('api/hasil_seminar/edit/' + seminar_id, $(this).serialize()).done(function(res) {
            if (res.error == true) {
                notif(res.message, 'error', true);
                $(".btn-act").attr('disabled', false).html('Selesai')
            } else {
                notif(res.message, 'success');
                show();
                $(".btn-act").attr('disabled', false).html('Selesai')
            }
        })
    })

})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>