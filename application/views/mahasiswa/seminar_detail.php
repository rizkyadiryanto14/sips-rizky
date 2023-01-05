<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', 'Seminar') ?>

<?php $this->app->section() ?>
<div class="card">
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
                    <td>Waktu Seminar</td>
                    <th class="tanggal_jam">0000-00-00 00:00 AM</th>
                </tr>
                <tr>
                    <td>Tempat</td>
                    <th class="tempat">-</th>
                </tr>
                <tr>
                    <td>Dosen Penguji</td>
                    <th class="nama_penguji"></th>
                </tr>
                <tr>
                    <td>Surat Permohonan</td>
                    <th class="surat_permohonan">-</th>
                </tr>
                <tr>
                    <td>File Proposal</td>
                    <th class="file_proposal">-</th>
                </tr>
                <tr>
                    <td>Syarat Seminar</td>
                    <th class="syarat_seminar">-</th>
                </tr>
                <tr>
                    <td>Kartu Bimbingan</td>
                    <th class="kartu_bimbingan">-</th>
                </tr>
                <tr>
                    <td>Berita Acara</td>
                    <th class="berita_acara"></th>
                </tr>
                <tr>
                    <td>Status</td>
                    <th class="status"></th>
                </tr>
            </table>
        </div>
    </div>
    <div class="card-footer text-right">
        <a href="<?= base_url() ?>mahasiswa/seminar" class="btn btn-default">Kembali</a>
    </div>
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
                console.log(res.data)
                $('.proposal_mahasiswa_judul').html(res.data.proposal_mahasiswa_judul);
                if (res.data.tanggal != null && res.data.jam != null) {
                    tanggal_jam = res.data.tanggal + ' ' + res.data.jam;
                } else {
                    tanggal_jam = '<span class="badge badge-danger">Data Belum Diset</span>';
                }
                $('.tanggal_jam').html(tanggal_jam);
                if (res.data.dosen_penguji_id != null) {
                    nama_penguji = '1. ' + res.data.dosen_penguji_id + '<br>2. ' + res.data
                        .dosen_penguji2_id;
                } else {
                    nama_penguji = '<span class="badge badge-danger">Data Belum Diset</span>';
                }
                $('.nama_penguji').html(nama_penguji);
                if (res.data.tempat != null) {
                    tempat = res.data.tempat;
                } else {
                    tempat = '<span class="badge badge-danger">Data Belum Diset</span>';
                }
                $('.tempat').html(tempat);
                $('.surat_permohonan').html(`<a href="` + base_url + `cdn/vendor/surat_permohonan/` +
                    res.data.surat_permohonan + `">` + res.data.surat_permohonan + `</a>`);
                $('.file_proposal').html(`<a href="` + base_url + `cdn/vendor/file_proposal/` + res.data
                    .file_proposal + `">` + res.data.file_proposal + `</a>`);
                $('.syarat_seminar').html(`<a href="` + base_url + `cdn/vendor/syarat_seminar/` + res
                    .data.syarat_seminar + `">` + res.data.syarat_seminar + `</a>`);
                $('.kartu_bimbingan').html(`<a href="` + base_url + `cdn/vendor/kartu_bimbingan/` + res
                    .data.kartu_bimbingan + `">` + res.data.kartu_bimbingan + `</a>`);
                $('.berita_acara').html((res.data.hasil.berita_acara) ? `<a href="` + base_url +
                    `cdn/vendor/berita_acara/` + res.data.hasil.berita_acara + `">` + res.data.hasil
                    .berita_acara + `</a>` : 'Sedang Di Proses...');
                if (res.data.hasil.status == '1') {
                    status = 'Lanjut (Sempurna)';
                } else if (res.data.hasil.status == '2') {
                    status = 'Lanjut (Perbaikan)';
                } else {
                    status = 'Ditolak/Belum Dinilai';
                }
                $('.status').html(status);
            }
        })
    }

    show()

})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>