<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Dashboard') ?>

<?php $this->app->section() ?>
<div class="row">
    <div class="col-md-4">
        <div class="card card-stats">
            <!-- Card body -->
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title text-uppercase text-muted mb-0">Total Mahasiswa</h5>
                        <span class="h2 font-weight-bold mb-0 mahasiswa-total">0</span>
                    </div>
                    <div class="col-auto">
                        <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                            <i class="fa fa-users"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-stats">
            <!-- Card body -->

            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title text-uppercase text-muted mb-0">Total Dosen</h5>
                        <span class="h2 font-weight-bold mb-0 dosen-total">0</span>
                    </div>
                    <div class="col-auto">
                        <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
                            <i class="fa fa-user-tie"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-stats">
            <!-- Card body -->
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title text-uppercase text-muted mb-0">Total Prodi</h5>
                        <span class="h2 font-weight-bold mb-0 prodi-total">0</span>
                    </div>
                    <div class="col-auto">
                        <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
                            <i class="ni ni-money-coins"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="card">
    <div class="card-header">
        <div class="card-title">Grafik Mahasiswa per Prodi</div>
    </div>
    <div class="card-body">
        <canvas id="mahasiswa-per-prodi" style="width: 100%; text-align: center; max-height: 300px;"></canvas>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <div class="card-title">Status Judul</div>
    </div>
    <div class="card-body">
        <canvas id="judul-status" style="width: 100%; text-align: center; max-height: 300px;"></canvas>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <div class="card-title">Status Proposal</div>
    </div>
    <div class="card-body">
        <canvas id="proposal-status" style="width: 100%; text-align: center; max-height: 300px;"></canvas>
    </div>
</div>

<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/chartjs/Chart.min.css">
<script src="<?= base_url() ?>cdn/plugins/chartjs/Chart.min.js"></script>
<script>
$(document).ready(function() {
    var gridLineColor = 'rgba(77, 138, 240, .1)';
    if ($('#proposal-status').length) {
        var monthlySalesChart = document.getElementById('proposal-status').getContext('2d');
        new Chart(monthlySalesChart, {
            type: 'bar',
            data: {
                labels: ['Daftar Skripsi', 'Seminar Proposal', 'Sidang Skripsi'],
                datasets: [{
                        label: "Sudah",
                        backgroundColor: "blue",
                        data: [<?= $sudah;?>],
                    },
                    {
                        label: "Belum",
                        backgroundColor: "#fae637",
                        data: [<?= $belum;?>],
                    },
                ]
            },
            options: {
                maintainAspectRatio: false,
                legend: {
                    display: false,
                    labels: {
                        display: false
                    }
                },
                scales: {
                    xAxes: [{
                        display: true,
                        barPercentage: .3,
                        categoryPercentage: .6,
                        gridLines: {
                            display: false
                        },
                        ticks: {
                            fontColor: '#8392a5',
                            fontSize: 20
                        }
                    }],
                    yAxes: [{
                        gridLines: {
                            color: gridLineColor
                        },
                        ticks: {
                            fontColor: '#8392a5',
                            fontSize: 20,
                            min: 1,
                            max: 50
                        }
                    }]
                }
            }
        })
    }

    call('api/mahasiswa').done(function(res) {
        $('.mahasiswa-total').html(res.data.length)
    })

    call('api/dosen').done(function(res) {
        $('.dosen-total').html(res.data.length)
    })

    call('api/prodi').done(function(res) {
        $('.prodi-total').html(res.data.length)
    })

    call('api/mahasiswa/dataperprodi').done(function(res) {
        if (res.data) {
            label = [];
            data = [];
            res.data.forEach((obj) => {
                label.push(obj.prodi_nama);
                data.push(obj.mahasiswa_total);
            });

            var donutChartCanvas = $('#mahasiswa-per-prodi').get(0).getContext('2d')
            var donutData = {
                labels: label,
                datasets: [{
                    data: data,
                    backgroundColor: ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc',
                        '#d2d6de'
                    ],
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
        }
    })

    // Status Judul
    // labelJudul = [];
    // dataJudul = [];
    // res.data.forEach((obj) => {
    //   label.push(obj.prodi_nama);
    //   data.push(obj.mahasiswa_total);
    // });

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
})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>