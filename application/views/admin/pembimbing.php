<?php $this->app->extend('template/admin') ?>

<?php $this->app->setVar('title', 'Pembimbing') ?>

<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-6">
                <div class="card-title">Manage Pembimbing</div>
            </div>
            <div class="col-6 text-right">
                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#jumlahpembimbing">
                    <i class="fa fa-plus"></i>
                    Edit Jumlah Pembimbing
                </button>

                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#editkuota">
                    <i class="fa fa-plus"></i>
                    Edit Kuota Bimbingan
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="editkuota">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="tambahdosen">
                <div class="modal-header">
                    <div class="modal-title">Edit Kuota Bimbingan</div>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="level">Pilih Maximal Kuota</label>
                        <select name="level" id="level" class="form-control">
                            <option disabled>- pilih -</option>
                            <option value="2">2</option>
                            <option value="4">4</option>
                            <option value="6">6</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="jumlahpembimbing">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="tambahdosen">
                <div class="modal-header">
                    <div class="modal-title">Edit jumlah pembimbing</div>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="level">Pilih Maximal Kuota</label>
                        <select name="level" id="level" class="form-control">
                            <option disabled>- pilih -</option>
                            <option value="2">2</option>
                            <option value="4">4</option>
                            <option value="6">6</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>


<?php $this->app->endSection('script') ?>

<?php $this->app->init() ?>