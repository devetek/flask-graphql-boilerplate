# Tentang Account

Account adalah service pengelolaan member yang terdaftar di seluruh aplikasi devetek. Account akan bertanggung jawab dalam mengelola semua data member meliputi memberikan struktur data, penambahan data, menipulasi data ataupun menghapus data.

## Rules of Data

    - Setiap member dapat terdaftar di semua aplikasi devetek:
    	* Hompes
    	* PDAM
    	* Edutech
    	* Devi
        * Terpusat
    - Setiap member dapat memiliki lebih dari 1 email
    - Setiap member dapat memiliki lebih dari 1 no. telp
    - Setiap member wajib memiliki password (PHASE 1)
    - Setiap member dapat memiliki 1 username

## Deskripsi arsitektur service account

Service acccount berjalan di bawah JWT authentication. Beberapa resource hanya akan dapat diakses jika request yang masuk mmbawa token JWT yang valid. Beberapa service yang ada di dalam service account:

### Earthshaker

Earthshaker adalah service utama yang melayani request HTTP, RPC dari client/application yang telah terdaftar. List API yang telah tersedia dapat dilihat di [Butterfly](https://butterfly.devetek.com/docs).

- Standard register client app:

```sh
curl --request POST \
--url http://apidev.hompes.id/v2/account/client/register \
--header 'content-type: application/json' \
--data '{
    "client_name": "Hompes",
    "client_description": "Home Pesantren - Belajar agama dari genggaman tangan",
    "client_code": "HPS"
}'
```

- Standard get client app:

```sh
curl --request GET \
--url http://apidev.hompes.id/v2/account/client/1
```

- Standard get me request:

```sh
curl --request GET \
--url http://apidev.hompes.id/v2/account/me \
--header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE4NjMxNjksIm5iZiI6MTU2MTg2MzE2OSwianRpIjoiYWUxY2Y4ZTItNDRmMS00NGI1LTgyYTMtN2VmYjM0ZTc4NTE1IiwiZXhwIjoxNTYxOTQ5NTY5LCJpZGVudGl0eSI6MTMsImZyZXNoIjpmYWxzZSwidHlwZSI6ImFjY2VzcyIsImNzcmYiOiJmYWQ0OWFhNS02N2IyLTRjNWMtYTNlZS04YWMyZGRmNzhmNzgifQ._bvALJ5s3OWnR0_Mf_y7n-70Un68TjrV4ELtb3fJl7Q' \
--header 'content-type: application/json'
```

- Standard get member detail by id request:

```sh
curl --request GET \
--url http://apidev.hompes.id/v2/account/1 \
--header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE4NjMxNjksIm5iZiI6MTU2MTg2MzE2OSwianRpIjoiYWUxY2Y4ZTItNDRmMS00NGI1LTgyYTMtN2VmYjM0ZTc4NTE1IiwiZXhwIjoxNTYxOTQ5NTY5LCJpZGVudGl0eSI6MTMsImZyZXNoIjpmYWxzZSwidHlwZSI6ImFjY2VzcyIsImNzcmYiOiJmYWQ0OWFhNS02N2IyLTRjNWMtYTNlZS04YWMyZGRmNzhmNzgifQ._bvALJ5s3OWnR0_Mf_y7n-70Un68TjrV4ELtb3fJl7Q' \
--header 'content-type: application/json'
```

### Wisp

Wisp adalah worker yang bertugas melakukan pengumpulan data user dan melakukan eksekusi berdasarkan filter yang telah di atur di dashboard account. Sebagai contoh, jika ingin melakukan push notifikasi terhadap user yang belum melakukan verifikasi data selama 1 bulan atau lebih.

## TODO

- Endpoint create data member (Sudah ada, tidak ditampilkan ke dalam dokumentasi)
- Endpoint update data member
- Endpoint delete data member
