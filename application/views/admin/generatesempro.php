<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', "Pendaftaran Skripsi") ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-body">
        <div class="card-title">Setting Algoritma : </div>
        <form id="form_cari" action="<?= base_url('admin/GenerateSempro/proses'); ?>" method="POST"
            onsubmit="disableBtn()">
            
         
            <div class="block span6">
             <label>Jumlah Populasi</label>  
            <input type="text" name="jumlah_populasi" class="form-control" value="10">
            <label>Probabilitas CrossOver</label>  
            <input type="text" class="form-control" name="probabilitas_crossover" value="0.70">
            
            <label>Probabilitas Mutasi</label>  
            <input type="text" class="form-control" name="probabilitas_mutasi" value="0.60">
            
            <label>Jumlah Generasi</label>  
            <input type="text" class="form-control" name="jumlah_generasi" value="1000">
          </div>
         
            <button class="btn btn-primary mt-3 btn-act" type="sumbit">
                Generate Jadwal <i class="fa fa-chevron-right"></i>
            </button>
        </form>
    </div>
</div>



<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<link rel="stylesheet" href="<?= base_url() ?>cdn/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<script src="<?= base_url() ?>cdn/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>cdn/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>

<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>