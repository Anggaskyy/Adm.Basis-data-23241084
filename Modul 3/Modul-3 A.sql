-- Nama: Angga Saputra
-- Nim : 23241084
-- Kelas: C
-- Modul : Modul-3 database

-- menggunakan database
use ptic_mart;

-- ORDER BY
-- menggunakan data dari sebuah field/kolo, atau hasil oleh kolom
-- Praktek 1
-- ambil nama produk dan qty dari tabel penjualan urutkan qty
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty;

-- Praktek 2
-- ambil nama produk, qty dari tb penjualan urutkan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;

-- LATIHAN MANDIRI 1
-- tampilkan semua kolom dari table tr_penjualan dengan mengurutkan berdasarkan qty dan tgl_transaksi.
SELECT * FROM tr_penjualan ORDER BY qty, tgl_transaksi;
-- tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan qty dan nama_pelanggan.
SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan;
-- tampilkan semua kolom dari table ms_pelanggan dengan mngurutkan berdasarkan qty dan alamat.
SELECT * FROM ms_pelanggan ORDER BY alamat;

-- Praktek 3
-- ambil nama produk, qty dari tb penjualan urutan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- Praktek 4
-- ambil nama produk, qty dari tb penjualan urut qty DESC, nama produk asc
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk ASC;
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk DESC;

-- LATIHAN MANDIRI 2
-- ambil nama produk, qty dari tb penjualan urutan qty kecil ke besar
SELECT * FROM tr_penjualan ORDER BY tgl_transaksi DESC, qty ASC;
-- ambil nama produk, qty dari tabel ms_pelanggan urutan qty secara menaik dan nama_pelanggan secara menurun.
SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan DESC;
-- ambil nama produk, qty dari tabel ms_pelanggan urutan qty secara menaik dan alamat secara menurun.
SELECT * FROM ms_pelanggan ORDER BY alamat DESC;


-- Praktek 5
-- menggunakan ORDER BY dari hasil perhitungan kolom
-- ambil nama produk, qty, harga dan perkalian qty*harga, urut qty*harga
SELECT nama_produk, qty, harga, qty*harga AS total
FROM tr_penjualan
ORDER BY total DESC;

-- LATIHAN MANDIRI 3
-- tampilkan semua data dari tabel tr_penjualan_dqlab dan hitung: Total harga (qty × harga), Diskon sebesar 10% dari total harg Total harga setelah diskon Urutkan hasil berdasarkan harga setelah diskon dari yang terbesar ke terkecil.
SELECT *, (qty * harga) AS harga_total,
       ((qty * harga) * 10 / 100) AS diskon,
       (qty * harga) - ((qty * harga) * 10 / 100) AS harga_setelah_diskon
FROM tr_penjualan
ORDER BY harga_setelah_diskon DESC;


