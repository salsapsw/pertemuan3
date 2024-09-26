# TUGAS PERTEMUAN 3 
# SALSABILLA PUTERI S.W. - H1D021063 - SHIFT F

# PENJELASAN SOURCE CODE
# main.dart
1. ![image](https://github.com/user-attachments/assets/38fb03d9-9caa-41fe-963a-eab3813c997a)
   digunakan untuk mengimpor pustaka flutter yang diperlukan dan juga file lain yang diperlukan. 

2. ![image](https://github.com/user-attachments/assets/f5c2ec0e-7885-467b-9b2f-0b462ce0ce8d)
   ini digunakan untuk mengatur tema keseluruhan aplikasi
   primarySwatch: Menentukan palet warna utama (warna dominan) dari aplikasi
   primaryColor: Warna utama untuk komponen aplikasi seperti AppBar
   scaffoldBackgroundColor: Warna latar belakang utama yang digunakan di seluruh halaman aplikasi
   appBarTheme: Menentukan gaya dan warna khusus untuk AppBar
   backgroundColor: Menentukan warna latar belakang AppBar
   titleTextStyle: Menentukan gaya teks untuk judul di dalam AppBar
   textTheme: Menentukan gaya teks secara global untuk widget teks di aplikasi
   bodyMedium: Gaya teks untuk teks biasa dengan ukuran medium
   bodySmall: Gaya teks untuk teks biasa dengan ukuran lebih kecil
   titleLarge: Gaya untuk judul besar, seperti headline
   elevatedButtonTheme: Menentukan gaya tombol ElevatedButton

3. ![image](https://github.com/user-attachments/assets/21a7f88b-a59c-4333-b529-4a0a59d5c3e2)
   ini untuk menentukan halaman apa yang pertama kali muncul ketika aplikasi dijalankan 

4. ![image](https://github.com/user-attachments/assets/36dbc62e-97d3-4f30-b8a8-1be6b70b6c28)
   ini digunakan untuk mengarahkan ke halaman yang dituju ketika dipanggil

# landing_page.dart
1. ![image](https://github.com/user-attachments/assets/afc4a933-945a-474b-a288-f4f5d8092515)
   digunakan untuk mengimpor pustaka flutter dan file lain, nah pustaka SharedPreferences itu yang digunakan untuk menyimpan data pengguna secara lokal

2. ![image](https://github.com/user-attachments/assets/b12aab26-dff8-44b5-98ac-6278fba455f2)
   untuk menampilkan halaman landing page di aplikasi

3. ![image](https://github.com/user-attachments/assets/8c09713c-b852-4385-9d3a-91501c8e76ca)
   untuk mengambil username yang disimpan di local storage (SharedPreferences ) untuk ditampilkan dihalaman landing page

4. ![image](https://github.com/user-attachments/assets/bcac92d4-4b4d-46e8-acbc-2c022dfebd75)
   method build() membangun tampilan antarmuka untuk LandingPage. digunakan untuk mendefinisikan elemen-elemen seperti AppBar, menu samping (drawer), dan body halaman.

5. ![image](https://github.com/user-attachments/assets/3ee24377-1ca3-4c63-8a3e-d97fcc63d087)
   menampilkan judul diatas halaman landing page

6. ![image](https://github.com/user-attachments/assets/c9250f17-e453-4f47-a9fa-37ae91fd9f3c)
   menampilkan menu samping dengan widget SideMenu yang telah didefinisikan sebelumnya

7. ![image](https://github.com/user-attachments/assets/2c607320-6d14-444a-aa9c-043ebb4021ed)
   FutureBuilder digunakan untuk menampilkan data yang diperoleh secara asinkron dari fungsi _getUsername

8. ![image](https://github.com/user-attachments/assets/fb43ea0b-cc0d-4e36-91e9-433a9205acea)
   menentukan pesan yang ditampilkan tergantung apa data username berhasil dimuat atau tidak. jika berhasil, pesan akan menyapa pengguna dengan namanya

9. ![image](https://github.com/user-attachments/assets/01a26515-f7a7-4ea1-b3e9-81999574c422)
    digunakan untuk menampilkan beberapa kalimat di landing page

# login_screen.dart
1. ![image](https://github.com/user-attachments/assets/f3e977b4-6880-4bad-b1d9-20db587dfeb6)
   digunakan untuk mengimpor pustaka flutter dan file lain, nah pustaka SharedPreferences itu yang akan digunakan untuk menyimpan data pengguna secara lokal

2. ![image](https://github.com/user-attachments/assets/4ffd2239-0a97-45e6-b0db-d7b8d1d92ea4)
   State dari LoginScreen, dua TextEditingController digunakan untuk mengelola input dari pengguna, yakni untuk username dan password

3. ![image](https://github.com/user-attachments/assets/99ba52e1-5806-4dc7-bbc5-b6c707995bac)
   initState() adalah metode yang dijalankan ketika widget pertama kali diinisialisasi. memeriksa status login pengguna secara lokal untuk melihat apa mereka sudah pernah login sebelumnya.

4. ![image](https://github.com/user-attachments/assets/346cafc6-c045-4cdd-8eb5-12725cd0dda3)
   fungsi ini memeriksa apakah pengguna sudah login sebelumnya dengan memeriksa SharedPreferences. Jika status isLoggedIn adalah true, pengguna secara otomatis diarahkan ke halaman landing dengan Navigator.pushReplacementNamed('/landing').

5. ![image](https://github.com/user-attachments/assets/ac09a8fa-d2bd-45fe-81d4-9f0058047355)
   fungsi _login mengecek apakah input username dan password sesuai dengan nilai yang dihardcode (salsa untuk username dan 12345678 untuk password). Jika benar, status login pengguna disimpan di SharedPreferences, lalu diarahkan ke halaman landing. Jika salah, pesan kesalahan ditampilkan dengan SnackBar

6. ![image](https://github.com/user-attachments/assets/f6e49166-8823-45be-8deb-ddf068e9fef4)
   method build bertugas membangun antarmuka halaman login. Di dalamnya terdapat AppBar dan formulir untuk mengisi username dan password

7. ![image](https://github.com/user-attachments/assets/9fadfd2a-9189-434c-b90e-14f1d9ee5197)
   menampilkan judul

8. ![image](https://github.com/user-attachments/assets/f50a1f86-178f-42dd-9941-6916aa0337ff)
   TextField digunakan untuk menerima input dari pengguna. TextField pertama untuk username dan kedua untuk password. Pada TextField password, properti obscureText diatur ke true untuk menyembunyikan karakter yang diketik

9. ![image](https://github.com/user-attachments/assets/94b849cd-4022-401c-9e01-f728f7bd764a)
    button Login ditampilkan menggunakan ElevatedButton. Saat ditekan, fungsi _login dipanggil untuk memverifikasi username dan password

10. ![image](https://github.com/user-attachments/assets/654fac54-8159-41bc-b660-8da9932224ef)
    SizedBox digunakan untuk memberikan jarak vertikal antara input password dan tombol Login agar tampilan lebih rapi

# profile_page.dart
1. ![image](https://github.com/user-attachments/assets/10bb76e4-e744-417a-abde-5d26da801075)
    mengimpor pustaka flutter untuk membangun antarmuka pengguna, shared_preferences untuk menyimpan dan mengambil data pengguna secara lokal, dan font_awesome_flutter untuk menggunakan ikon dari FontAwesome

2. ![image](https://github.com/user-attachments/assets/84468da6-fdc1-4ada-ae07-fe15d2783db1)
   ProfilePage adalah sebuah widget statis (StatelessWidget), yang artinya tidak ada perubahan status internal setelah widget dirender. Semua data diambil secara asinkron menggunakan Future

3. ![image](https://github.com/user-attachments/assets/6b6e2a01-e694-4ec7-ad1c-9fc879a8106c)
   mengambil profil pengguna dari SharedPreferences, yang berisi informasi tentang username. jika username tidak ditemukan di SharedPreferences, nilai default "Unknown User" akan digunakan. selain itu, fungsi ini mengembalikan NIM (Nomor Induk Mahasiswa) dan shift yang dihardcode

4. ![image](https://github.com/user-attachments/assets/a2c9ad14-1098-48ef-a4da-c5749a5c09e8)
   method build digunakan untuk merender antarmuka halaman profil. Di sini, FutureBuilder digunakan untuk menampilkan data pengguna setelah diambil dari SharedPreferences

5. ![image](https://github.com/user-attachments/assets/096a1600-3dfe-4dab-9fb1-c8fab2304a28)
   FutureBuilder digunakan untuk menjalankan dan menampilkan hasil dari operasi asinkron, yaitu fungsi _getUserProfile().

6. ![image](https://github.com/user-attachments/assets/254a1f16-8e24-4ec8-ad0b-ebf9adf3ba73)
    Card digunakan untuk menampilkan data pengguna dalam tampilan yang elegan

7. ![image](https://github.com/user-attachments/assets/d9e49752-0395-46ec-ae76-3e7ac5f2d721)
    ikon profil dari FontAwesome (userCircle) digunakan untuk memberikan visualisasi tambahan di halaman profil

8. ![image](https://github.com/user-attachments/assets/faee03d4-567b-423d-9401-ff71a70b3462)
    Text digunakan untuk menampilkan data pengguna yang diambil dari SharedPreferences seperti username, NIM, dan shift. (dengan ukurang yang beda-beda)

9. ![image](https://github.com/user-attachments/assets/ef1d315b-6746-4917-84a4-3fa31cf1e789)
    padding digunakan untuk memberikan ruang di sekitar konten dalam Card, sehingga tampilan tidak terlalu rapat. Semua elemen dalam card (ikon, username, NIM, dan shift) diletakkan secara vertikal menggunakan Column

# side_menu.dart
1. ![image](https://github.com/user-attachments/assets/f58a4abc-645c-4de2-9d3b-d19d87208975)
   untuk membangun antarmuka aplikasi, menggunakan ikon FontAwesome, dan menyimpan serta mengambil data pengguna secara lokal 

2. ![image](https://github.com/user-attachments/assets/679a295c-0ec1-4c21-b13f-47c2d06743fa)
   SideMenu adalah sebuah widget statis (StatelessWidget) yang menampilkan menu samping (sidebar) atau drawer

3. ![image](https://github.com/user-attachments/assets/8d24ed30-b6a2-409c-a2b1-c8a7c840f469)
   Drawer adalah widget yang digunakan untuk menampilkan menu samping (side menu) yang muncul dari sisi kiri layar ketika pengguna menggeser layar atau menekan tombol menu. Di dalamnya, ListView digunakan untuk membuat daftar menu.

4. ![image](https://github.com/user-attachments/assets/e880bc76-433a-4c37-8b7c-976cc37a8a97)
   header untuk side menu, yang menampilkan teks "Menu" di tengah dengan padding atas dan bawah sebesar 16.0 dan pengaturan untuk memperindah lainnya 

5. ![image](https://github.com/user-attachments/assets/4cfc8703-2bbe-4bfe-b9d4-eaf5f39d2ab6)
   ListTile ini mewakili item menu "Home".
   leading: Menggunakan ikon FontAwesome (home) untuk menunjukkan halaman beranda (home).
   title: Menampilkan teks 'Home'.
   onTap: Ketika item ditekan, drawer akan ditutup (Navigator.pop(context)), namun tidak ada navigasi lebih lanjut karena logika untuk pindah ke halaman lain tidak ditambahkan di sini.

6. ![image](https://github.com/user-attachments/assets/858c62a0-ba51-4b18-86d9-28cd3c4b5ebe)
   ListTile ini mewakili item menu "Profile".
   leading: Menggunakan ikon FontAwesome (user) untuk menunjukkan halaman profil.
   title: Menampilkan teks 'Profile'.
   onTap: Ketika ditekan, pengguna akan diarahkan ke halaman profil (/profile) menggunakan Navigator.pushNamed.

7. ![image](https://github.com/user-attachments/assets/9c452917-df76-4697-84d1-7f39f61c7328)
   ListTile ini mewakili item menu "Logout".
   leading: Menggunakan ikon FontAwesome (signOutAlt) untuk menunjukkan aksi logout.
   title: Menampilkan teks 'Logout'.
   onTap: Ketika ditekan, memanggil fungsi _logout(context) untuk melakukan proses logout.

8. ![image](https://github.com/user-attachments/assets/b0f462ff-1be3-47fe-a4a9-15a5b60fb853)
   Fungsi ini melakukan proses logout dengan langkah-langkah berikut:
   1. SharedPreferences: Mengambil instance dari SharedPreferences untuk mengakses dan memanipulasi data yang tersimpan.
   2. Logout Process: Mengatur isLoggedIn menjadi false dan menghapus username dari SharedPreferences.
   3. Navigation: Setelah proses logout selesai, pengguna diarahkan ke halaman login ('/') menggunakan Navigator.of(context).pushReplacementNamed('/').
   Fungsi ini memastikan bahwa pengguna benar-benar keluar dari akun dengan membersihkan status login dan menghapus username yang tersimpan.

# OUTPUT PROJECT 
# LOGIN PAGE
![image](https://github.com/user-attachments/assets/41e6a6dd-2c77-42c8-8f49-f7fd9c18799d)
![image](https://github.com/user-attachments/assets/7b3fa64d-f0b2-4d0c-8093-e1094e5c8910)

# LANDING PAGE / HOME PAGE
![image](https://github.com/user-attachments/assets/f39b1595-b83e-4328-8cb1-f7d9205d865e)

# SIDE MENU 
![image](https://github.com/user-attachments/assets/e8d62089-f122-4d45-8355-3a00ff91490c)

# PROFILE PAGE 
![image](https://github.com/user-attachments/assets/706be2f3-a310-4d63-a272-bc554bf68e7b)

