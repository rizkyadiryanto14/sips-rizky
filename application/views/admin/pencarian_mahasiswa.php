<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Hasil Pencarian') ?>

<?php $this->app->section() ?>
<div class="card">
    <div class="card-header">
        <div class="card-title">
            Hasil Pencarian Mahasiswa
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-3">
                <p>NIM</p>
                <p>Nama</p>
                <p>Prodi</p>
                <p>Jenis Kelamin</p>
                <p>Tempat Lahir</p>
                <p>Tanggal Lahir</p>
                <p>Email</p>
                <p>Alamat</p>
                <p>Nomor Telepon</p>
                <p>Alamat Orang Tua</p>
                <p>Nomor Telepon Orang Tua</p>
                <p>Nomor Telepon Orang Dekat</p>
                <p>IPK</p>
            </div>
            <div class="col-md-9">
                <?php $verifikasi = '';
                $verifikasi = $mahasiswa->status; ?>
                <p class="font-weight-bold">: <?= $mahasiswa->nim; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->nama; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->nama_prodi; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->jenis_kelamin; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->tempat_lahir; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->tanggal_lahir; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->email; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->alamat; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->nomor_telepon; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->alamat_orang_tua; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->nomor_telepon_orang_tua; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->nomor_telepon_orang_dekat; ?></p>
                <p class="font-weight-bold">: <?= $mahasiswa->ipk; ?></p>
            </div>
            <div class="col-md-3">
                <p>Status Verifikasi</p>
                <p>Status Pendaftaran Skripsi</p>
                <p>Status Seminar Proposal</p>
                <p>Status Seminar Akhir / Skripsi</p>
            </div>
            <div class="col-md-9">
                <p class="font-weight-bold">:
                    <?php if ($verifikasi == '1') { ?>
                    <span class="badge badge-success"><i class="fa fa-check"></i> Sudah Diverifikasi</span>
                    <?php } else { ?>
                    <span class="badge badge-danger"><i class="fa fa-times"></i> Belum Diverifikasi</span>
                    <?php } ?>
                </p>
                <p class="font-weight-bold">:
                    <?php if ($usulan_proposal > 0) { ?>
                    <span class="badge badge-success"><i class="fa fa-check"></i> Sudah Melaksanakan</span>
                    <?php } else { ?>
                    <span class="badge badge-danger"><i class="fa fa-times"></i> Belum Melaksanakan</span>
                    <?php } ?>
                </p>
                <p class="font-weight-bold">:
                    <?php if ($seminar_proposal > 0) { ?>
                    <span class="badge badge-success"><i class="fa fa-check"></i> Sudah Melaksanakan</span>
                    <?php } else { ?>
                    <span class="badge badge-danger"><i class="fa fa-times"></i> Belum Melaksanakan</span>
                    <?php } ?>
                </p>
                <p class="font-weight-bold">:
                    <?php if ($skripsi > 0) { ?>
                    <span class="badge badge-success"><i class="fa fa-check"></i> Sudah Melaksanakan</span>
                    <?php } else { ?>
                    <span class="badge badge-danger"><i class="fa fa-times"></i> Belum Melaksanakan</span>
                    <?php } ?>
                </p>
            </div>
        </div>
    </div>
    <div class="card-footer"></div>
</div>
<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>
<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>