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
    <div style="text-align:center;" class="header font-weight-300">
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
                    (<?= $showData[0]['penguji_nama']; ?>)
                    <br>
                    NIDN <?= $showData[0]['penguji_nip']; ?>
                </td>
                <td style="font-weight: bold">
                    Penguji 2
                </td>
                <td style="font-weight: bold">
                    (<?= $showData[0]['pembimbing_nama']; ?>)
                    NIDN <?= $showData[0]['pembimbing_nip']; ?>
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
                <th style="height: 150px;">
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