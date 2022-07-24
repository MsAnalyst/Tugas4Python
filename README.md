# Tugas4Python
**Tugas 4 Python - Project Library Management System (LMS) Sederhana**
**Tujuan Pengerjaan Project:**
Membuat desain aplikasi manajemen perpustakaan untuk diakses oleh siswa Pacmann. 


**Detail/Deskripsi Task:**
Aplikasi ini dibuat dengan Python sebagai bahasa pemrograman, command CRUD sebagai basis pembuatan database, dan XAMPP Control Panel untuk menghubungkan database ke CRUD. 


**Langkah pengerjaan adalah sebagai berikut:**
1. Membuat CRUD untuk membuat record baru dalam database 1) Anggota perpustakaan, 2) Buku perpustakaan, 3) Transaksi peminjaman
2. Membuat class Menu yang mencakup fungsi untuk:  
    1) Menampilkan menu aplikasi bernama ShowMenu 
    2) Menampilkan menu backToMenu untuk kembali ke menu utama alias menu aplikasi
    3) Menampilkan menu untuk transaksi bernama dataTransaksi 
    4) Menampilkan menu untuk data buku bernama dataBuku
    5) Menampilkan menu data anggota bernama dataAnggota 


**Cara Running/Penggunaan Program:**
Sebelum menjalankan program, Anda perlu memastikan bahwa port yang digunakan sudah sesuai dengan yang disetting di dalamnya. Port yang dipakai adalah 8111, sebelumnya adalah 3306.


**Hasil Test Case:**
1) python .\main.py: Menampilkan menu aplikasi
     ===Selamat Datang di Aplikasi Perpustakaan===
     ===Menu===
     1. Transaksi Peminjaman
     2. Data Buku 
     3. Data Anggota
     4. Keluar
     Pilih Menu berdasarkan angka:    (input)
        
2)  Menu 1: Menampilkan menu transaksi 
     ===Anda Berada di Menu Transaksi Peminjaman===
     ===Silahkan pilih menu===
     1. Peminjaman
     2. Edit Status Transaksi
     3. Hapus Transaksi
     4. Lihat Data Transaksi
     5. Keluar dari menu Transaksi
     Pilih Menu:    (input)

3) Menu 2: Menampilkan data buku 
     ===Anda Berada di Menu Data Buku===
     ===Silahkan pilih menu===
     1. Tambah Buku
     2. Edit Buku
     3. Hapus Buku
     4. Lihat Data Buku
     5. Keluar dari menu Buku
     Pilih Menu:    (input)
 
4) Menu 3: Menampilkan data anggota  
     ===Anda Berada di Menu Data Anggota===
     ===Silahkan pilih menu===
     1. Tambah Anggota
     2. Edit Anggota
     3. Hapus Anggota
     4. Lihat Data Anggota
     5. Keluar dari menu Anggota
     Pilih Menu:    (input)

5) Struktur tabel 'Anggota' = id_anggota, nama, alamat, nohp

7) Struktur tabel 'Buku' = kodeBuku, judulBuku, penerbit, penulis, tahunTerbit, posisiRak

8) Struktur tabel 'Transaksi' = id_transaksi, id_anggota, kodeBuku, tglpinjam, tglkembali, keterangan.

9) Struktur opsi 'keterangan' = sudah dikembalikan/belum dikembalikan  


**Saran Perbaikan:**
NULL
