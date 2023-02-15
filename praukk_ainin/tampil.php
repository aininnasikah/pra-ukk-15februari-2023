
<html>
    <head>
</head>
<body>
    <h1>Aplikasi pendataan penyewaan DVD </h1>
    <h4><a href ="tambah.php">tambah sewa</a></h4>
    <table border="1">
        <tr>
            <th>No</th>
            <th>Nama Penyewa</th>
            <th>Alamat</th>
            <th>Genre Film</th>
            <th>Judul Film</th>
            <th>Tahun Film</th>
            <th>Tanggal Sewa</th>
            <th>Tanggal Kembali</th>
            <th>Harga</th>
            <th>Aksi</th>
        </tr>

<?php
include("koneksi.php");
$query = mysqli_query($koneksi, "SELECT * FROM tb_penyewa INNER JOIN tb_dvd ON tb_penyewa.id_dvd = tb_dvd.id_dvd");

while($data=mysqli_fetch_array($query)){
    echo"<tr>";
    echo"<td>".$data['id_penyewa']."</td>";
    echo"<td>".$data['nama_penyewa']."</td>";
    echo"<td>".$data['alamat']."</td>";
    echo"<td>".$data['genre_film']."</td>";
    echo"<td>".$data['judul_film']."</td>";
    echo"<td>".$data['tahun_film']."</td>";
    echo"<td>".$data['tanggal_sewa']."</td>";
    echo"<td>".$data['tanggal_kembali']."</td>";
    echo"<td>".$data['harga']."</td>";
    echo"<td>";
    echo"<a href='edit.php?id_penyewa=".$data['id_penyewa']."'>Edit</a> |";
    echo"<a href='hapus.php?id_penyewa=".$data['id_penyewa']."'>Hapus</a>";
    echo"</td>";
    echo"</tr>";
}
?>
<a href = "tambah.php"><input type = "button" value="tambah">
</table>
</body>
</html>