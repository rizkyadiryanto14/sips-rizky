<?php
$id_user = $this->session->userdata('id');
$verifikasi = '';
$dataUser = $this->db->get_where('mahasiswa', array('id' => $id_user))->result();
foreach ($dataUser as $du) {
    $verifikasi = $du->status;
}
?>
<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', "Dashboard") ?>

<?php $this->app->section() ?>
<?php if ($verifikasi == 1) { ?>
<div class="card card-stats">
    <div class="card-body">
        <div class="row">
            <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Total Pendaftaran Skrispi</h5>
                <span class="h2 font-weight-bold mb-0 total-proposal">0</span>
            </div>
            <div class="col-auto">
                <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                    <i class="ni ni-active-40"></i>
                </div>
            </div>
        </div>
        <p class="mt-3 mb-0 text-sm">
            <a href="<?= base_url() ?>mahasiswa/proposal" class="text-success mr-2"><i class="fa fa-arrow-left"></i>
                Selengkapnya</a>
        </p>
    </div>
</div>

<?php } ?>

<div class="card">
    <div class="card-header">
        <h5 class="card-title text-uppercase text-muted mb-0 text-center">Cek Kemiripan Judul Skripsi</h5>
    </div>
    <div class="card-body">
        <form action="" method="POST" class="form-group d-flex">
            <input type="text" name="judul" id="" class="form-control" placeholder="Masukan Judul" required
                value="<?= get_instance()->input->post('judul') ? get_instance()->input->post('judul') : '' ?>">
            <div class="mx-2"></div>
            <input type="submit" value="Cek" class="btn btn-primary">
        </form>
        <div class="table-responsive">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Skripsi</th>
                        <th>TIngkat Kemiripan Judul</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data as $i => $item) { ?>
                    <tr>
                        <td><?= $i + 1; ?></td>
                        <td><?= $item['judul_skripsi']; ?></td>
                        <td><?= $item['plagiat']; ?></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
        <div class="card-header">
            <h5 class="card-title text-uppercase text-muted mb-0 ">Catatan : </h5>
            <h5 class="card-title text-uppercase text-muted mt-3">Presentase di bawah 40% judul <span
                    class="badge badge-success">Diterima</span></h5>
            <h5 class="card-title text-uppercase text-muted mt-3">Presentase di Atas 40% judul <span
                    class="badge badge-danger">Tolak</span></h5>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <card class="header">
            <h2 class="text-center">Timeline</h2>
        </card>
        <div class="text-center">
            <?php foreach ($template as $row) { ?>
            <img width="80%" src="<?= base_url('assets/essence/img/timeline/') . $row->timeline; ?>" alt="timeline">
            <?php } ?>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-md-3 mb-3">
                <img src="<?= base_url() ?>cdn/img/mahasiswa/default.png" class="foto card-img">
            </div>
            <div class="col-md-9">
                <div class="row p-2">
                    <div class="col-6">Nama</div>
                    <div class="col-6"><strong class="nama">Nama Mahasiswa</strong></div>
                </div>
                <div class="row p-2">
                    <div class="col-6">Prodi</div>
                    <div class="col-6"><strong class="prodi_nama">Nama Prodi</strong></div>
                </div>
                <div class="row p-2">
                    <div class="col-6">Fakultas</div>
                    <div class="col-6"><strong class="prodi_fakultas_nama">Nama Fakultas</strong></div>
                </div>
                <div class="row p-2">
                    <div class="col-6">Email</div>
                    <div class="col-6"><strong class="email">Email Mahasiswa</strong></div>
                </div>
                <div class="row p-2 mb-5">
                    <div class="col-6">Nomor Telepon</div>
                    <div class="col-6"><strong class="nomor_telepon">Nomor Telepon Mahasiswa</strong></div>
                </div>
                <div style="position: absolute; bottom: 10px; right: 10px;">
                    <a href="<?= base_url() ?>mahasiswa/profil" class="btn btn-primary btn-sm">
                        Selengkapnya
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="card">
    <div class="card-body">
        <div class="card-header">
            <h4 class="text-center">Grafik Judul Diterima Dan di Tolak</h4>
        </div>
        <canvas id="judul-status" style="width: 100%; text-align: center; max-height: 300px;"></canvas>
    </div>
</div>
<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<script src="<?= base_url() ?>cdn/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>cdn/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url(); ?>assets/countdown/jquery.countdown.min.js"></script>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/chartjs/Chart.min.css">
<script src="<?= base_url() ?>cdn/plugins/chartjs/Chart.min.js"></script>
<script>
$(document).ready(function() {
    call('api/mahasiswa/detail/<?= $this->session->userdata('id') ?>').done(function(req) {
        if (req.data) {
            $('.nama').html(req.data.nama);
            $('.prodi_nama').html(req.data.prodi.nama);
            $('.prodi_fakultas_nama').html(req.data.prodi.fakultas.nama);
            $('.email').html(req.data.email);
            $('.nomor_telepon').html(req.data.nomor_telepon);
            $('img.foto').attr('src', base_url + 'cdn/img/mahasiswa/' + ((req.data.foto) ? req.data
                .foto : 'default.png'));
            $('.total-proposal').html(req.data.proposal.length);
        }
    })

})

// $.ajax({
//     url: base_url + '/getDeadline',
//     data: {
//         mahasiswa_id: <?= $this->session->userdata('id') ?>
//     },
//     type: 'post',
//     dataType: 'json',
//     success: function(res) {
//         no = 1
//         $.each(res, function(i, item) {
//             if (item.deadline != '') {
//                 now = new Date();
//                 _x = new Date(item.deadline);
//                 if (now > _x) {
//                     $.ajax({
//                         url: base_url + 'cekdeadline/' + item.mahasiswa_id,
//                         dataType: 'json',
//                         type: 'get',
//                         success: function(res) {
//                             if (res == 'waktu habis') {
//                                 alert(
//                                     'Waktu habis dan data skripsi tidak ada, akun anda dinon-verifikasi'
//                                 )
//                                 location.reload()
//                             }
//                             if (res == "aman") {
//                                 $("#deadline_" + item.id).html(
//                                     'Waktu habis dan data skripsi ada')
//                             }
//                         }

//                     })
//                 }
//             }

//             bulanIndo = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus',
//                 'September', 'Oktober', 'November', 'Desember'
//             ];
//             _tgl = new Date(item.deadline)
//             _hari = _tgl.getDay();
//             _bulan = _tgl.getMonth();
//             _tahun = _tgl.getFullYear();
//             _jam = _tgl.getHours();
//             _menit = _tgl.getMinutes();


//             _tbody =
//                 '<tr>+' +
//                 '<td>' + no++ + '</td>' +
//                 '<td><b><span id="deadline_' + item.id + '"></span><b></td>' +
//                 '<td>' + _hari + ' ' + bulanIndo[_bulan] + ' ' + _tahun + ' Pukul ' + _jam + ':' +
//                 _menit + '</td>' +
//                 '<td>' + item.judul + '</td>' +
//                 '</tr>'
//             $("#_tbody").append(_tbody)

//             $("#deadline_" + item.id)
//                 .countdown(item.deadline, function(event) {
//                     $(this).text(
//                         event.strftime('Waktu Terisisa %D Hari %H Jam %M Menit %S Detik')
//                     );
//                 }).on('finish.countdown', function() {
//                     $("#deadline_" + item.id).html('Waktu Habis')
//                     $.ajax({
//                         url: base_url + 'cekdeadline/' + item.mahasiswa_id,
//                         dataType: 'json',
//                         type: 'get',
//                         success: function(res) {
//                             if (res == 'waktu habis') {
//                                 alert(
//                                     'Waktu habis dan data skripsi tidak ada, akun anda dinon-verifikasi'
//                                 )
//                                 location.reload()
//                             }
//                             if (res == "aman") {
//                                 $("#deadline_" + item.id).html(
//                                     'Waktu habis dan data skripsi ada')
//                             }
//                         }

//                     })
//                 });
//         })
//         $(".dataTable").dataTable();
//     }
// })

judulDiterima = 0;
judulDitolak = 0;
const judulData = atob('<?= $judul; ?>');
JSON.parse(judulData).data.forEach(val => {
    if (val.status == "1") {
        judulDiterima += 1;
    } else {
        judulDitolak += 1;
    }
});

var donutChartCanvas = $('#judul-status').get(0).getContext('2d')
var donutData = {
    labels: ['Judul Diterima', 'Judul Ditolak'],
    datasets: [{
        data: [judulDiterima, judulDitolak],
        backgroundColor: ['#00a65a', '#f56954'],
    }]
}
var donutOptions = {
    maintainAspectRatio: false,
    responsive: true,
}
//Create pie or douhnut chart
// You can switch between pie and douhnut using the method below.
var donutChart = new Chart(donutChartCanvas, {
    type: 'doughnut',
    data: donutData,
    options: donutOptions
})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>