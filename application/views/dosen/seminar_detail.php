<?php $this->app->extend('template/dosen') ?>

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
                    <td>File Proposal</td>
                    <th class="file_proposal">-</th>
                </tr>
                <tr>
                    <td>Surat Permohonan</td>
                    <th class="surat_permohonan">-</th>
                </tr>
                <tr>
                    <td>Kartu Bimbingan</td>
                    <th class="kartu_bimbingan">-</th>
                </tr>
                <tr>
                    <td>Syarat Seminar</td>
                    <th class="syarat_seminar">-</th>
                </tr>
                <tr>
                    <td>Masukan</td>
                    <th class="masukan">-</th>
                </tr>
                <tr>
                    <td>Status</td>
                    <th class="status"></th>
                </tr>
            </table>
        </div>
    </div>
    <div class="card-footer text-right">
        <a href="<?= base_url() ?>dosen/seminar" class="btn btn-default">Kembali</a>
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
                    window.location = base_url + 'dosen/seminar';
                })
            } else {
                $('.proposal_mahasiswa_judul').html(res.data.proposal_mahasiswa_judul);
                $('.mahasiswa_nama').html(res.data.mahasiswa_nama);
                $('.tanggal_jam').html(res.data.tanggal + ' ' + res.data.jam);
                $('.tempat').html(res.data.tempat);
                $('.file_proposal').html(`<a href="` + base_url + `cdn/vendor/file_proposal/` + res.data
                    .file_proposal + `">` + res.data.file_proposal + `</a>`);
                $('.surat_permohonan').html(`<a href="` + base_url + `cdn/vendor/surat_permohonan/` +
                    res.data.surat_permohonan +
                    `">` + res.data.surat_permohonan + `</a>`);
                $('.kartu_bimbingan').html(`<a href="` + base_url + `cdn/vendor/kartu_bimbingan/` +
                    res.data.kartu_bimbingan + `">` + res.data.kartu_bimbingan + `</a>`);
                $('.syarat_seminar').html((res.data.syarat_seminar) ? `<a href="` + base_url +
                    `cdn/vendor/syarat_seminar/` + res.data.syarat_seminar + `">` + res.data
                    .syarat_seminar + `</a>` : '-');
                $('.masukan').html((res.data.hasil.masukan) ? `<a href="` + base_url +
                    `cdn/vendor/masukan/` + res.data.hasil.masukan + `">` + res.data.hasil.masukan +
                    `</a>` : '-');
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