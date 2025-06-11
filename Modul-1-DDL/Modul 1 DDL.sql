-- Nama : Angga Saputra
-- Nim  : 23241084
-- Kelas: C
-- Kelas: Pendidikan Teknologi Informasi

-- Membat Database 
CREATE DATABASE ptic_mart;

-- Menggunakan Database
USE ptic_mart;

-- Membuat Tabel
create table ms_pelanggan(
id_pelanggan int PRIMARY KEY NOT NULL,
nama_pelanggan VARCHAR(50),
alamat VARCHAR(100),
kota VARCHAR(15),
no_tlp VARCHAR(15)
);

create table ms_produk(
id_produk int primary key not null,
nama_produk varchar(50),
kategori varchar(50),
harga int(15),
stok int(15)
);

-- membuat tabel transaksi dengan forign key
CREATE TABLE transaksi(
id_transaksi int PRIMARY KEY NOT NULL,
tgl_transaksi DATE,
id_produk int,
id_pelanggan int,
qty int,
total_harga int,
FOREIGN KEY (id_produk) REFERENCES produk (id_produk),
FOREIGN KEY (id_pelanggan) REFERENCES pelanggan (id_pelanggan)
);

-- Mengisi data ke tabel pelanggan
INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, alamat, kota, no_tlp) 
VALUES
(211, "ucup", "Jl pemuda No. 567", "Mataram", "08266600724"),
(007,"leviathan", "Jl pemuda No. 565", "Mataram", "08266600721"),
(008,"obrock", "Jl suranadi No.19", "Mataram", "0829857464848"),
(009,"skayzone", "Jl kuta No.26", "Mataram", "0829858464968"),
(002,"bobrock", "Jl datok lopan No.10", "Mataram", "0829859464808");

INSERT INTO produk(
id_produk, nama_produk, kategori, harga, stok
)VALUES
(211, "mie", "makanan", "25.000", "2"),
(007, "sate", "makanan", "15.000", "1"),
(008, "nasgor", "makanan", "35.000", "3"),
(009, "mie ayam", "makanan", "25.000", "5"),
(002, "kopi", "makanan", "10.000", "4");

-- cek apakah data sudah ada
SELECT * FROM pelanggan;
SELECT * FROM produk;

-- mengisi data pada tabel yang ada foreign key
INSERT INTO transaksi
set id_transaksi = 2911,
tgl_transaksi = "2025-02-22",
id_produk = (
SELECT id_produk FROM produk
WHERE id_produk = 211),
id_pelanggan = (
SELECT id_pelanggan FROM pelanggan
WHERE id_pelanggan = 007),
qty = 1,
total_harga = (
SELECT harga FROM produk
WHERE id_produk = 211) * qty;

SELECT * FROM transaksi
     
