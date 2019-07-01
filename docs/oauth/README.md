# Tentang Oauth

Oauth adalah service authentication yang diperuntukkan bagi accounts yang terdaftar di semua aplikasi devetek. Service oauth bertanggung jawab dalam mengelola session user yang akan register dan atau sedang login. Dengan standard JWT, data yang diberikan kepada user adalah, roles user dalam akses sebuah aplikasi.

Melalui service account, oauth mendapatkan data user yang melakukan proses authentication dan kemudian memberikan response beruba JWT yang dapat digunakan sebagai token di berbagai platform (Browser, Desktop, Mobile Apps).

## Deskripsi arsitektur service account

Session devetek dibangun menggunakan standard JWT. Dimana session memiliki 2 token yang dapat digunakan sebagai standard authentication.

Di fase pertama, token dapat digunakan disemua aplikasi devetek. Yang selanjutnya dapat digunakan untuk melakukan akses resource yang dilindungi JWT protector. Di dalam oauth terdapat beberapa service yang berjalan.

### Earthshaker

Earthshaker adalah service utama yang melayani request HTTP, RPC dari client/application yang telah terdaftar. List API yang telah tersedia dapat dilihat di [Butterfly](https://butterfly.devetek.com/docs).

- Standard register request:

```sh
curl --request POST \
  --url http://apidev.hompes.id/v2/oauth/registration \
  --header 'content-type: application/json' \
  --header 'x-devetek-app-id: 1' \
  --data '{
	"member_username": "prakasa1904",
	"member_password": "admin"
}'
```

- Standard login request:

```sh
curl --request POST \
  --url http://apidev.hompes.id/v2/oauth/authorization \
  --header 'content-type: application/json' \
  --header 'x-devetek-app-id: 1' \
  --data '{
  "member_username": "arivin29",
  "member_password": "admin"
}'
```

- Standard logout request:

```sh
curl --request DELETE \
  --url http://apidev.hompes.id/v2/oauth/logout \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE5NDI2NTksIm5iZiI6MTU2MTk0MjY1OSwianRpIjoiNGU4MzU1OWYtN2E2Zi00Mzg4LThmMjctMjA1NTJkYjFkOGE2IiwiZXhwIjoxNTYyMDI5MDU5LCJpZGVudGl0eSI6MiwiZnJlc2giOmZhbHNlLCJ0eXBlIjoiYWNjZXNzIiwiY3NyZiI6ImY1MDViZTE1LTQ3MzItNDRmMC04MWYzLWQ5YTUxOWIxMTNmMyJ9.Tja-qhlLeoEnmiF3daFd4TJTRR9RWaslq3DMnk6bp_U' \
  --header 'content-type: application/json'
```

- Standard refresh token request:

```sh
curl --request POST \
  --url http://apidev.hompes.id/v2/oauth/refresh \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE5MTcxMDgsIm5iZiI6MTU2MTkxNzEwOCwianRpIjoiYTI5MDI2NDYtZmE3Zi00YTFkLWI3NDEtYTFmYzE2Y2M3OTIwIiwiZXhwIjoxNTYyNTIxOTA4LCJpZGVudGl0eSI6MiwidHlwZSI6InJlZnJlc2giLCJjc3JmIjoiNGNjY2UyZjEtN2ViZi00MTgwLTgyYzgtNDFhY2FjZTBkY2YwIn0.sb4ftc4iburHGAAKvS5tnRLcoHIA95G2_XEzLmMUT3U' \
  --header 'content-type: application/json'
```

Gunakan https://jwt.io/ untuk melakukan validasi token JWT. Standard JWT yang diberikan mengandung data secret yang dapat digunakan aplikasi untuk melakukan akses private resource aplikasi yang terkait.

## TODO

- Single member login in app id
