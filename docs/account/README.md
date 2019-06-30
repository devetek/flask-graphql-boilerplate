# Tentang Account

Account adalah service pengelolaan member yang terdaftar di seluruh aplikasi devetek. Account akan bertanggung jawab dalam mengelola semua data member meliputi memberikan struktur data, penambahan data, menipulasi data ataupun menghapus data.

## Rules of Data

    - Setiap member dapat terdaftar di semua aplikasi devetek:
    	* Hompes
    	* PDAM
    	* Edutech
    	* Devi
    - Setiap member dapat memiliki lebih dari 1 email
    - Setiap member dapat memiliki lebih dari 1 no. telp
    - Setiap member wajib memiliki password (PHASE 1)
    - Setiap member dapat memiliki 1 username

## Deskripsi arsitektur service account

Service acccount berjalan di bawah JWT authentication. Beberapa resource hanya akan dapat diakses jika request yang masuk mmbawa token JWT yang valid. Beberapa service yang ada di dalam service account:

### Earthshaker

Earthshaker adalah service utama yang melayani request HTTP, RPC dari client/application yang telah terdaftar. List API yang telah tersedia dapat dilihat di [Butterfly](https://butterfly.devetek.com/docs).

### Wisp

Wisp adalah worker yang bertugas melakukan pengumpulan data user dan melakukan eksekusi berdasarkan filter yang telah di atur di dashboard account. Sebagai contoh, jika ingin melakukan push notifikasi terhadap user yang belum melakukan verifikasi data selama 1 bulan atau lebih.
