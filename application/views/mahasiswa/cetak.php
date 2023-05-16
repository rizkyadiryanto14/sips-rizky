<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    .left-item {
        position: absolute;
        left: auto;
    }
    </style>
</head>

<body>
    <section class="header">
        <div style="text-align:center;" class="header font-weight-300">
            <h3>Form Penilaian Seminar Proposal Skripsi</h3>
        </div>
    </section>

    <section class="content">
        <table class="table table-hover" style="margin-left: 40px;">
            <tr>
                <td>Nama</td>
                <td>: <?= $showData[0]['nama_mahasiswa']; ?>
                </td>
            </tr>
            <tr>
                <td>Nim</td>
                <td>: <?= $showData[0]['nim']; ?></td>
            </tr>
            <tr>
                <td>Judul</td>
                <td>: <?= $showData[0]['proposal_mahasiswa_judul']; ?></td>
            </tr>
            <tr>
                <td>Hari, Tanggal</td>
                <td>: <?= hariIndo(getDay($showData[0]['tanggal'])) . ', ' . tgl_indo($showData[0]['tanggal']); ?></td>
            </tr>
        </table>
    </section>
    <br>
    <section class="isi">
        <table border="1" width="100%">
            <tr>
                <th>ASPEK YANG DI NILAI</th>
                <th>KETERANGAN</th>
                <th>Nilai (0-100)</th>
            </tr>
            <tr>
                <td>
                    1. Presentasi
                </td>
                <td>
                    Komunikatif, Ketepatan Waktu, Kejelasan dan Kerunutan dalam penyampaian materi
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>2. Alat Bantu Presentasi</td>
                <td>Kejelasan dan tampilan dari powerpoint</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>3. Penampilan</td>
                <td>Cara berpakaian, etika, sopan santun</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>4. Penguasaan Materi</td>
                <td>Cara merespons pertanyaan dan kualitas jawaban </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>5. Kelayakan Proposal</td>
                <td>Ide penelitian, tinjauan pustaka, bahan dan metode penelitian</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td> <strong> jumlah Rata-Rata <br><br>Rata - Rata Nilai </strong></td>
                <td>

                </td>
            </tr>
        </table>

        <section class="tanda_tangan">
            <table class="table table-hover" style="width:100%; margin-left:500px;margin-top:150px;">
                <tr class="font-weight">
                    <td style="font-weight: bold">
                        Menyetujui
                        Penguji 1
                    </td>
                </tr>
                <tr class="font-weight">
                    <td style="font-weight: bold">
                        <br><br><br><br>
                        (<?= $showData[0]['dosen_penguji_id']; ?>)
                        <br>
                        NIDN.
                    </td>
                </tr>
            </table>
        </section>

    </section>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <section class="header">
        <div style="text-align:center;" class="header font-weight-300">
            <h3>Form Penilaian Seminar Proposal Skripsi</h3>
        </div>
    </section>

    <section class="content">
        <table class="table table-hover" style="margin-left: 40px;">
            <tr>
                <td>Nama</td>
                <td>: <?= $showData[0]['nama_mahasiswa']; ?>
                </td>
            </tr>
            <tr>
                <td>Nim</td>
                <td>: <?= $showData[0]['nim']; ?></td>
            </tr>
            <tr>
                <td>Judul</td>
                <td>: <?= $showData[0]['proposal_mahasiswa_judul']; ?></td>
            </tr>
            <tr>
                <td>Hari, Tanggal</td>
                <td>: <?= hariIndo(getDay($showData[0]['tanggal'])) . ', ' . tgl_indo($showData[0]['tanggal']); ?></td>
            </tr>
        </table>
    </section>
    <br>
    <section class="isi">
        <table border="1" width="100%">
            <tr>
                <th>ASPEK YANG DI NILAI</th>
                <th>KETERANGAN</th>
                <th>Nilai (0-100)</th>
            </tr>
            <tr>
                <td>
                    1. Presentasi
                </td>
                <td>
                    Komunikatif, Ketepatan Waktu, Kejelasan dan Kerunutan dalam penyampaian materi
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>2. Alat Bantu Presentasi</td>
                <td>Kejelasan dan tampilan dari powerpoint</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>3. Penampilan</td>
                <td>Cara berpakaian, etika, sopan santun</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>4. Penguasaan Materi</td>
                <td>Cara merespons pertanyaan dan kualitas jawaban </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>5. Kelayakan Proposal</td>
                <td>Ide penelitian, tinjauan pustaka, bahan dan metode penelitian</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td> <strong> jumlah Rata-Rata <br><br>Rata - Rata Nilai </strong></td>
                <td>

                </td>
            </tr>
        </table>

        <section class="tanda_tangan">
            <table class="table table-hover" style="width:100%; margin-left:500px;margin-top:150px;">
                <tr class="font-weight">
                    <td style="font-weight: bold">
                        Menyetujui
                        Penguji 2
                    </td>
                </tr>
                <tr class="font-weight">
                    <td style="font-weight: bold">
                        <br><br><br><br>
                        (<?= $showData[0]['dosen_penguji2_id']; ?>)
                        <br>
                        NIDN.
                    </td>
                </tr>
            </table>
        </section>
    </section>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <section class="header">
        <div style="text-align:center;" class="header font-weight-300">
            <h3>Form Penilaian Seminar Proposal Skripsi</h3>
        </div>
    </section>

    <section class="content">
        <table class="table table-hover" style="margin-left: 40px;">
            <tr>
                <td>Nama</td>
                <td>: <?= $showData[0]['nama_mahasiswa']; ?>
                </td>
            </tr>
            <tr>
                <td>Nim</td>
                <td>: <?= $showData[0]['nim']; ?></td>
            </tr>
            <tr>
                <td>Judul</td>
                <td>: <?= $showData[0]['proposal_mahasiswa_judul']; ?></td>
            </tr>
            <tr>
                <td>Hari, Tanggal</td>
                <td>: <?= hariIndo(getDay($showData[0]['tanggal'])) . ', ' . tgl_indo($showData[0]['tanggal']); ?></td>
            </tr>
        </table>
    </section>
    <br>
    <section class="isi">
        <table border="1" width="100%">
            <tr>
                <th>ASPEK YANG DI NILAI</th>
                <th>KETERANGAN</th>
                <th>Nilai (0-100)</th>
            </tr>
            <tr>
                <td>
                    1. Presentasi
                </td>
                <td>
                    Komunikatif, Ketepatan Waktu, Kejelasan dan Kerunutan dalam penyampaian materi
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>2. Alat Bantu Presentasi</td>
                <td>Kejelasan dan tampilan dari powerpoint</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>3. Penampilan</td>
                <td>Cara berpakaian, etika, sopan santun</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>4. Penguasaan Materi</td>
                <td>Cara merespons pertanyaan dan kualitas jawaban </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>5. Kelayakan Proposal</td>
                <td>Ide penelitian, tinjauan pustaka, bahan dan metode penelitian</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td> <strong> jumlah Rata-Rata <br><br>Rata - Rata Nilai </strong></td>
                <td>

                </td>
            </tr>
        </table>

        <section class="tanda_tangan">
            <table class="table table-hover" style="width:100%; margin-left:500px;margin-top:150px;">
                <tr class="font-weight">
                    <td style="font-weight: bold">
                        Menyetujui
                        Pembimbing Utama
                    </td>
                </tr>
                <tr class="font-weight">
                    <td style="font-weight: bold">
                        <br><br><br><br>
                        (<?= $showData[0]['penguji_nama']; ?>)
                        <br>
                        NIDN <?= $showData[0]['penguji_nip']; ?>
                    </td>
                </tr>
            </table>
        </section>

    </section>

    <div style="text-align:center; margin-top:520px;" class="header font-weight-300">
        <h3>BERITA ACARA</h3>
        <h3>SEMINAR PROPOSAL</h3>
    </div>

    <section class="content">
        <p>Pada</p>
        <table class="table table-hover" style="margin-left: 40px;">
            <tr>
                <td>Hari, Tanggal</td>
                <td>: <?= hariIndo(getDay($showData[0]['tanggal'])) . ', ' . tgl_indo($showData[0]['tanggal']); ?></td>
            </tr>
            <tr>
                <td>Jam</td>
                <td>: <?= $showData[0]['jam']; ?> (WITA)</td>
            </tr>
            <tr>
                <td>Tempat</td>
                <td>: <?= $showData[0]['tempat']; ?></td>
            </tr>
        </table>
    </section>
    <section class="isi">
        <p>Telah Dilaksanakan Seminar Proposal</p>
        <table class="table table-hover" style="margin-left: 40px;">
            <tr>
                <td>Judul</td>
                <td>: <?= $showData[0]['proposal_mahasiswa_judul']; ?>
                </td>
            </tr>
            <tr>
                <td>Oleh</td>
                <td>: <?= $showData[0]['nama_mahasiswa']; ?></td>
            </tr>
            <tr>
                <td>Nim</td>
                <td>: <?= $showData[0]['nim']; ?></td>
            </tr>
            <tr>
                <td>Program Studi</td>
                <td>: <?= $showData[0]['nama_prodi']; ?></td>
            </tr>
        </table>
    </section>
    <section>
        <h3 style="text-align: center;">MEMUTUSKAN</h3>
        <table class="table table-hover" style="margin-left: 40px;">
            <tr>
                <td>Menetapkan Nama/Nim</td>
                <td>: <?= $showData[0]['nama_mahasiswa'] . ' / ' . $showData[0]['nim']; ?></td>
            </tr>
            <tr>
                <td>Tempat/Tanggal Lahir</td>
                <td>: <?= $showData[0]['tempat_lahir'] . ', ' . tgl_indo($showData[0]['tanggal_lahir']); ?></td>
            </tr>
            <tr>
                <td>Judul Skripsi</td>
                <td>: <?= $showData[0]['proposal_mahasiswa_judul']; ?>
                </td>
            </tr>
            <tr>
                <td>Dinyatakan</td>
                <td>: DITERIMA / TIDAK DITERIMA untuk
                    meneruskan penelitian dengan proposal
                    Skripsi tersebut diatas</td>
            </tr>
            <tr>
                <td>Dengan Nilai</td>
                <td>: ..............</td>
            </tr>
            <tr>
                <td>Dengan Predikat</td>
                <td>: .............</td>
            </tr>
        </table>
        <table class="table table-hover" style="margin-left: 40px;width:100%;">
            <tr class="font-weight">
                <td style="font-weight: bold">
                    Menyetujui
                    Penguji 1
                </td>
                <td style="font-weight: bold">
                    Penguji 2
                </td>
                <td style="font-weight: bold">
                    Pembimbing Utama
                </td>
            </tr>
            <tr class="font-weight">
                <td style="height: 150px;">

                    <img src="<?= base_url() ?>assets/uploads/signature/<?= $showData[0]['penguji_signatutre']; ?>"
                        height="15%">
                </td>
            <tr>
            <tr class="font-weight">
                <td style="font-weight: bold">
                    (<?= $showData[0]['dosen_penguji_id']; ?>)
                    <br>
                    NIDN.
                </td>
                <td style="font-weight: bold">
                    (<?= $showData[0]['dosen_penguji2_id']; ?>)
                    <br>
                    NIDN.
                </td>
                <td style="font-weight: bold">
                    (<?= $showData[0]['penguji_nama']; ?>)
                    <br>
                    NIDN <?= $showData[0]['penguji_nip']; ?>
                </td>
            </tr>
            <tr>
                <br>
                <td style="font-weight: bold">
                    Mengetahui Ketua Program Studi <?= $showData[0]['nama_prodi']; ?>
                </td>
                <td style="font-weight: bold">
                </td>
                <td style="font-weight: bold">
                </td>
            </tr>
            <tr>
                <th style="height: 90px;">
                    <br />
                </th>
            </tr>
            <tr>
                <td style="font-weight: bold">
                    (Rodianto, M.Kom)
                    <br>
                    NIDN 0808078101
                </td>
                <td style="font-weight: bold">
                </td>
                <td style="font-weight: bold">
                </td>
            </tr>
        </table>
    </section>
</body>

</html>