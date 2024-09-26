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

# side_menu.dart
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

