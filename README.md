Alur Pengerjaan Project Firebase Firestore

1.	Pertama, kita membuat modelnya terlebih dahulu yang diberi nama user_model. Fungsi dari model adalah untuk mendefinisikan struktur data pengguna dalam bentuk class User. Model ini nantinya digunakan sebagai representasi data yang disimpan di Firestore dan dikonversi menjadi objek dalam aplikasi Flutter.
 
2.	Kedua, kita membuat file repository dengan nama firestore_repository. Repository ini berguna sebagai penghubung antara Firestore dengan kode UI di aplikasi Flutter. Intinya, file ini digunakan untuk mengelola operasi CRUD dalam database Firestore.
 
3.	Ketiga, kita membuat file screen untuk halaman aplikasi. Halaman yang pertama adalah home_screen yang berfungsi sebagai halaman utama aplikasi. Halaman ini menggunakan Streambuilder sehingga dapat menampilkan data pengguna dari Firestore secara real time ke dalam list. Di halaman ini juga terdapat fitur tambah, edit, hapus, serta melihat detail data.
 
4.	Keempat, kita membuat halaman untuk menambah pengguna baru ke Firestore. File ini bernama add_user_screen yang menyediakan form input untuk nama dan email.
 
5.	Kelima, kita membuat halaman untuk mengedit data yang bernama edit_user_screen. Di halaman ini menampilkan data lama terlebih dahulu yang nantinya dapat diedit dan disimpan ke Firestore.
 
6.	Keenam, kita membuat halaman detail bernama detail_user_screen yang muncul ketika pengguna mengklik list yang ada di home_screen.
 
7.	Jangan lupa untuk mengatur file main. File ini adalah titik masuk utama dari aplikasi Flutter. Bukan hanya itu, disini juga tempat untuk menginisialisasi Firebase sebelum aplikasi dijalankan.

Untuk informasi lebih lengkap, terdapat di link Drive dibawah:
PDF : https://drive.google.com/file/d/1M7EwBf1-Y8qwR6Z4zgK2AJQE-2KF7oCj/view?usp=sharing

Demo : https://drive.google.com/file/d/1ghgKygTtRqtEnW6SSB2Uz3vtqEie86Ou/view?usp=sharing
