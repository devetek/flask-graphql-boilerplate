# Deskripsi arsitektur

Account adalah service datasource user, yang mengelola kebutuhan data user sesuai dengan yang dibutuhkan aplikasi yang terdaftar di service account. Sebagai gambaran besar, misal devetek memiliki 10 aplikasi yang berjalan dengan kebutuhan data user yang berbeda-beda. Account service akan memberikan struktur data yang diinginkan sesuai dengan requirement dari aplikasi.

Arsitektur service account:

## Database

account_client

- client_id
- client_name
- client_description
- client_code

account_member

- member_id
- member_username
- member_fullname
- member_email
- member_password
- member_join_date

member_client (many to many)

- client_id
- member_id

Sebagai gambaran besar, service account ini hanya mengatur rules utama dari banyak aplikasi. Untuk kebutuhan secara spesifik, aplikasi masing-masing akan bertanggung jawab menyediakan kebutuhan mereka. Namun jangka panjangnya, untuk dapat menghandle kebutuhan bisnis yang bergerak begitu cepat, diharapkan struktur data yang dibuat mampu mengikuti pergerakan bisnis yang begitu cepat. Pilahan utama untuk ini adalah no sql database. Mari kita lihat di upgrade versi selanjutnya.
