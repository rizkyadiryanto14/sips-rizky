<?php $this->app->extend('template/dosen') ?>

<?php $this->app->setVar('title', 'Dashboard') ?>

<?php $this->app->section() ?>

<div class="card">
    <div class="card-header">
        <h3>Timeline</h3>
    </div>
    <div class="card-body">
        <div class="text-center">
            <?php foreach ($template as $row) { ?>
            <img width="80%" src="<?= base_url('assets/essence/img/timeline/') . $row->timeline; ?>" alt="timeline">
            <?php } ?>
        </div>
    </div>
</div>

<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/chartjs/Chart.min.css">
<script src="<?= base_url() ?>cdn/plugins/chartjs/Chart.min.js"></script>
<script>
$(document).ready(function() {

    call('api/mahasiswa').done(function(res) {
        $('.mahasiswa-total').html(res.data.length)
    })

})
</script>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>