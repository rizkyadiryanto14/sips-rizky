<?php $this->app->extend('template/mahasiswa') ?>

<?php $this->app->setVar('title', "Cek Judul") ?>

<?php $this->app->section() ?>
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
                        <th>Plagiarisme</th>
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
            <h5 class="card-title text-uppercase text-muted mb-0 ">Keterangan : </h5>
            <h5 class="card-title text-uppercase text-muted mt-3">Presentase di bawah 40% judul <span
                    class="badge badge-danger">Ditolak</span></h5>
        </div>
    </div>
</div>
<?php $this->app->endSection('content') ?>
<?php $this->app->init() ?>