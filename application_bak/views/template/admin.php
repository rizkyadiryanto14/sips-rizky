<?php $app = json_decode(file_get_contents(base_url('cdn/db/app.json'))) ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">

    <title>Skripsi - <?= $title ?></title>
    <?php include('_main/css.php') ?>
    <style>
    .admin {
        display: none;
    }

    .dosen {
        display: none;
    }
    </style>
</head>

<body>
    <!-- Sidenav -->
    <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
        <div class="scrollbar-inner">
            <!-- Brand -->
            <div class="sidenav-header  align-items-center">
                <a class="navbar-brand" href="javascript:void(0)">
                    <span style="font-size: medium;">SIPS</span>
                    <img src="<?= base_url() ?>cdn/img/icons/<?= $app->icon ? $app->icon : 'default.png' ?>"
                        class="navbar-brand-img" alt="...">
                </a>
            </div>
            <div class="navbar-inner">
                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                    <!-- Nav items -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>admin/dashboard">
                                <i class="ni ni-tv-2 text-primary"></i>
                                <span class="nav-link-text">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>admin/daftar_judul">
                                <i class="fa fa-book text-primary"></i>
                                <span class="nav-link-text">Daftar Judul</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>home-template">
                                <i class="fa fa-edit text-warning"></i>
                                <span class="nav-link-text">Website</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#pendaftaran" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fa fa-registered text-danger"></i>
                                <span>Pendaftaran</span>
                            </a>
                        </li>
                        <div class="collapse" id="pendaftaran">
                            <div class="card card-body">
                                <a href="<?= base_url() ?>admin/proposal" class="nav-link">
                                    <i class="ni ni-app text-red"></i>
                                    <span class="nav-link-text"> Skripsi</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/seminar">
                                    <i class="ni ni-books text-danger"></i>
                                    <span class="nav-link-text">Seminar Proposal</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/skripsi">
                                    <i class="fa fa-list text-primary"></i>
                                    <span class="nav-link-text">Sidang Skripsi</span>
                                </a>
                            </div>
                        </div>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#penjadwalan" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fa fa-clock text-info"></i>
                                <span>Penjadwalan</span>
                            </a>
                        </li>
                        <div class="collapse" id="penjadwalan">
                            <div class="card card-body">
                                <a href="<?= base_url("admin/hari") ?>" class="nav-link">
                                    <i class="ni ni-app text-red"></i>
                                    <span class="nav-link-text"> Hari</span>
                                </a>
                                <a href="<?= base_url("admin/ruangan") ?>" class="nav-link">
                                    <i class="ni ni-books text-danger"></i>
                                    <span class="nav-link-text">Ruangan</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/jam">
                                    <i class="fa fa-user text-warning"></i>
                                    <span class="nav-link-text">Jam</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/jadwal_dosen">
                                    <i class="fa fa-calendar text-primary"></i>
                                    <span class="nav-link-text">Jadwal Dosen</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/GenerateSempro">
                                    <i class="fa fa-clock text-danger"></i>
                                    <span class="nav-link-text">Generate Sempro</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/skripsi">
                                    <i class="fa fa-clock text-primary"></i>
                                    <span class="nav-link-text">Generate Skripsi</span>
                                </a>
                            </div>
                        </div>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#pengumuman" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fa fa-bullhorn text-primary"></i>
                                <span>Pengumuman</span>
                            </a>
                        </li>
                        <div class="collapse" id="pengumuman">
                            <div class="card card-body">
                                <a href="<?= base_url() ?>admin/pengumuman_proposal" class="nav-link">
                                    <i class="ni ni-app text-red"></i>
                                    <span class="nav-link-text"> Skripsi</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/Pengumuman_sempro">
                                    <i class="ni ni-books text-danger"></i>
                                    <span class="nav-link-text">Seminar Proposal</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/Pengumuman_skripsi">
                                    <i class="fa fa-list text-primary"></i>
                                    <span class="nav-link-text">Sidang Skripsi</span>
                                </a>
                            </div>
                        </div>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#akademik" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fa fa-building text-warning"></i>
                                <span>Akademik</span>
                            </a>
                        </li>
                        <div class="collapse" id="akademik">
                            <div class="card card-body">
                                <a class="nav-link" href="<?= base_url() ?>admin/dosen">
                                    <i class="fa fa-user-tie text-purple"></i>
                                    <span class="nav-link-text">Dosen</span>
                                </a>
                                <a class="nav-link" href="<?= base_url() ?>admin/mahasiswa">
                                    <i class="fa fa-users text-warning"></i>
                                    <span class="nav-link-text">Mahasiswa</span>
                                </a>
                            </div>
                        </div>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>admin/users">
                                <i class="fa fa-list text-primary"></i>
                                <span class="nav-link-text">Manage Users</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>admin/report">
                                <i class="fa fa-book-open text-danger"></i>
                                <span class="nav-link-text">Report</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url() ?>admin/pengaturan">
                                <i class="fa fa-cog text-success"></i>
                                <span class="nav-link-text">Pengaturan</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <!-- Main content -->
    <div class="main-content" id="panel">
        <!-- Topnav -->
        <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Search form -->
                    <!-- Navbar links -->
                    <ul class="navbar-nav align-items-center  ml-md-auto ">
                        <li class="nav-item d-xl-none">
                            <!-- Sidenav toggler -->
                            <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin"
                                data-target="#sidenav-main">
                                <div class="sidenav-toggler-inner">
                                    <i class="sidenav-toggler-line"></i>
                                    <i class="sidenav-toggler-line"></i>
                                    <i class="sidenav-toggler-line"></i>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item d-sm-none">
                            <a class="nav-link" href="#" data-action="search-show" data-target="#navbar-search-main">
                                <i class="ni ni-zoom-split-in"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                        <li class="nav-item dropdown">
                            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <div class="media align-items-center">
                                    <span class="avatar avatar-sm rounded-circle">
                                        <img alt="Image placeholder"
                                            src="<?= base_url() ?>cdn/img/mahasiswa/default.png">
                                    </span>
                                    <div class="media-body  ml-2  d-none d-lg-block">
                                        <span class="mb-0 text-sm  font-weight-bold">Sekretaris Program Studi</span>
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-menu  dropdown-menu-right ">
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Selamat Datang!</h6>
                                </div>
                                <a href="<?= base_url() ?>admin/profil" class="dropdown-item">
                                    <i class="ni ni-single-02"></i>
                                    <span>Profil</span>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="<?= base_url() ?>auth/logout" class="dropdown-item">
                                    <i class="ni ni-user-run"></i>
                                    <span>Logout</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header -->
        <!-- Header -->
        <div class="header bg-primary pb-6">
            <div class="container-fluid">
                <div class="header-body">
                    <div class="row align-items-center py-4">
                        <div class="col-lg-6 col-7">
                            <h6 class="h2 text-white d-inline-block mb-0"><?= $title ?></h6>
                            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                    <li class="breadcrumb-item"><a href="<?= base_url() ?>admin/dashboard"><i
                                                class="fas fa-home"></i></a></li>
                                    <?php
                                    $url = explode('/', str_replace("admin/", "", uri_string()));
                                    $link = '';
                                    for ($i = 0; $i < count($url); $i++) {
                                        $link .= $url[$i] . '/';
                                        if (($i + 1) !== count($url)) {
                                            echo '<li class="breadcrumb-item"><a href="' . base_url("admin/" . $link) . '">' . ucfirst($url[$i]) . '</a></li>';
                                        } else {
                                            echo '<li class="breadcrumb-item active">' . ucfirst($url[$i]) . '</li>';
                                        }
                                    }
                                    ?>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-lg-6 col-5 text-right">
                            <button type="button" class="btn btn-sm btn-neutral"
                                onclick="window.history.back()">Back</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page content -->
        <div class="container-fluid mt--6">
            <?= $content ?>
            <!-- Footer -->
            <footer class="footer pt-0">
                <div class="row align-items-center justify-content-lg-between">
                    <div class="col-lg-6">
                        <div class="copyright text-center  text-lg-left  text-muted">
                            <a href="#" class="font-weight-bold ml-1" target="_blank">@Copyright. SIPS Informatika UTS.
                                <?= date('Y') ?></a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <!-- Argon Scripts -->
    <!-- Core -->
    <?php include('_main/js.php') ?>
    <?= $script ?>
    <script>
    level = '<?= $this->session->userdata('level') ?>';
    if (level == '1') {
        $('.admin').css('display', 'block');
    } else if (level == '2') {
        $('.dosen').css('display', 'block');
    }
    </script>
    <script>
    call('api/dosen/details/<?= $this->session->userdata('id') ?>').done(function(res) {
        if (res.error == true) {
            window.location = base_url + 'auth/logout';
        } else {

        }
    })
    </script>


    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <?php if ($this->session->flashdata('sukses')) : ?>
    <script>
    Swal.fire({
        title: 'Succes!',
        text: '<?php echo $this->session->flashdata('sukses'); ?>',
        icon: 'success',
        confirmButtonText: 'OK'
    });
    </script>
    <?php endif; ?>

    <?php if ($this->session->flashdata('gagal')) : ?>
    <script>
    Swal.fire({
        title: 'Wrong !',
        text: '<?php echo $this->session->flashdata('gagal'); ?>',
        icon: 'error',
        confirmButtonText: 'OK'
    });
    </script>
    <?php endif; ?>
</body>

</html>