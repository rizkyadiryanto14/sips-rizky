<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Daftar Judul') ?>

<?php $this->app->section() ?>

<div class="card">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col">
                    <div class="card-title">Daftar Judul</div>
                </div>
                <div class="col text-right">
                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#tambahdata">
                        <i class="fa fa-plus"></i>
                        Tambah
                    </button>
                </div>
            </div>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover" id="data-skripsi">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nim</th>
                            <th>Nama</th>
                            <th>Judul Skripsi</th>
                            <th>Abstrak</th>
                            <th>Tahun Lulus</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($daftar_judul as $daftar) {
                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $daftar->nim ?></td>
                            <td><?php echo $daftar->nama ?></td>
                            <td><?php echo $daftar->judul_skripsi ?></td>
                            <td><?php echo $daftar->abstrak ?></td>
                            <td><?php echo $daftar->tahun_lulus ?></td>
                            <td>
                                <button class="btn btn-sm btn-primary" type="button" data-toggle="modal"
                                    data-target="#edit<?php echo $daftar->id; ?>"><i class="fa fa-edit"></i>
                                </button>


                                <button class="btn btn-sm btn-danger" type="button" data-toggle="modal"
                                    data-target="#hapus<?php echo $daftar->id; ?>">
                                    <i class="fa fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <?php } ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- modal hapus -->
<?php foreach ($daftar_judul as $daftar) { ?>
<div class="modal fade" id="hapus<?php echo $daftar->id; ?>">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="<?= base_url('admin/daftar_judul/delete/' . $daftar->id) ?>" method="POST">
                <div class="modal-header">
                    <div class="modal-title">Hapus Data</div>
                </div>
                <input type="hidden" name="id" value="<?php $daftar->id; ?>">
                <div class="modal-body">
                    <label>Yakin ingin menghapus data
                        <strong><?= $daftar->judul_skripsi ?></strong>
                    </label>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-danger">Hapus</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php } ?>

<!-- modal edit -->
<?php $no = 0;
foreach ($daftar_judul as $daftar) : $no++; ?>
<div class="modal fade" id="edit<?php echo $daftar->id; ?>">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="<?= base_url() ?>admin/daftar_judul/update" method="POST">
                <div class="modal-header">
                    <div class="modal-title">Edit Data</div>
                </div>
                <input type="hidden" name="id" value="<?php echo $daftar->id; ?>">
                <div class="modal-body">
                    <label>Nim</label>
                    <input type="text" value="<?php echo $daftar->nim ?>" name="nim" class="form-control"
                        placeholder="Masukan Nim" required>
                </div>
                <div class="modal-body">
                    <label>Nama</label>
                    <input type="text" value="<?php echo $daftar->nama ?>" name="nama" class="form-control"
                        placeholder="Masukan Nama" required>
                </div>
                <div class="modal-body">
                    <label for="">Judul Skripsi</label>
                    <input type="text" value="<?php echo $daftar->judul_skripsi ?>" name="judul_skripsi"
                        id="judul_skripsi" class="form-control">
                </div>
                <div class="modal-body">
                    <label for="">Abstrak</label>
                    <textarea name="abstrak" id="abstrak" cols="30" rows="10"
                        class="form-control"><?php echo $daftar->abstrak; ?></textarea>
                </div>
                <div class="modal-body">
                    <label for="">Tahun Lulus</label>
                    <input value="<?php echo $daftar->tahun_lulus ?>" type="text" name="tahun_lulus"
                        class="form-control" placeholder="Masukan Tahun Lulus" required>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php endforeach; ?>

<!-- modal tambah -->
<div class="modal fade" id="tambahdata">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form action="<?= base_url() ?>admin/daftar_judul/create" method="POST">
                <div class="modal-header">
                    <div class="modal-title">Tambah Daftar Judul</div>
                </div>

                <div class="modal-body">
                    <label>Nim</label>
                    <input type="text" name="nim" class="form-control" placeholder="Masukan Nim" required>
                </div>
                <div class="modal-body">
                    <label>Nama</label>
                    <input type="text" name="nama" class="form-control" placeholder="Masukan Nama" required>
                </div>
                <div class="modal-body">
                    <label for="">Judul Skripsi</label>
                    <input type="text" name="judul_skripsi" id="judul_skripsi" class="form-control">
                </div>
                <div class="modal-body">
                    <label for="">Abstrak</label>
                    <textarea name="abstrak" id="abstrak" cols="30" rows="10" class="form-control"></textarea>
                </div>
                <div class="modal-body">
                    <label for="">Tahun Lulus</label>
                    <input type="text" name="tahun_lulus" class="form-control" placeholder="Masukan Tahun Lulus"
                        required>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>



<?php $this->app->endSection('content') ?>

<?php $this->app->section() ?>

<?php if ($this->session->flashdata('error')) { ?>
<script>
let mess = "<?= $this->session->flashdata('error'); ?>"
notif(mess, 'error', true);
</script>
<?php } ?>

<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>