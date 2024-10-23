<?php
require "koneksi.php";

session_start();
if (!isset($_SESSION['login']) || $_SESSION['login'] !== true || $_SESSION['role'] !== 'admin') {
    // Jika belum login atau bukan admin, arahkan ke index.php
    header('Location: index.php');
    exit;
}

$id = $_GET['id'];

$result = mysqli_query($conn, "DELETE FROM suggestion_box WHERE id_pelanggan = $id");

if ($result) {
    echo "
        <script>
            alert('Data berhasil dihapus!');
            document.location.href = 'lihatdata.php';
        </script>";
} else {
    echo "
        <script>
            alert('Data gagal dihapus!');
            document.location.href = 'lihatdata.php';
        </script>";
}
?>