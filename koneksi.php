<?php
$koneksi = new mysqli('localhost', 'root', '','soode_padma');

if ($koneksi->connect_error) {
    die("Koneksi Gagal: " . $koneksi->connect_error);
} 
?>