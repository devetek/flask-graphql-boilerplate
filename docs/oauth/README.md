# Tentang Oauth

Oauth adalah service authentication yang diperuntukkan bagi accounts yang terdaftar di semua aplikasi devetek. Service oauth bertanggung jawab dalam mengelola session user yang akan register dan atau sedang login. Dengan standard JWT, data yang diberikan kepada user adalah, roles user dalam akses sebuah aplikasi.

Melalui service account, oauth mendapatkan data user yang melakukan proses authentication dan kemudian memberikan response beruba JWT yang dapat digunakan sebagai token di berbagai platform (Browser, Desktop, Mobile Apps).

## Deskripsi arsitektur service account

Session devetek dibangun menggunakan standard JWT. Dimana session memiliki 2 token yang dapat digunakan sebagai standard authentication.

Di fase pertama, token dapat digunakan disemua aplikasi devetek. Yang selanjutnya dapat digunakan untuk melakukan akses resource yang dilindungi JWT protector. Di dalam oauth terdapat beberapa service yang berjalan.

### Earthshaker

Earthshaker adalah service utama yang melayani request HTTP, RPC dari client/application yang telah terdaftar. List API yang telah tersedia dapat dilihat di [Butterfly](https://butterfly.devetek.com/docs).

- Standard register/login request:

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
--header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE4NjA3MDYsIm5iZiI6MTU2MTg2MDcwNiwianRpIjoiMmMyODM3NWItNzRiNi00NzZjLWJjMDItYTQzZmE3NmU5ZDdlIiwiZXhwIjoxNTYxOTQ3MTA2LCJpZGVudGl0eSI6MTMsImZyZXNoIjpmYWxzZSwidHlwZSI6ImFjY2VzcyIsImNzcmYiOiIyNjI3Yjk2Yy0xNjA1LTQ1YjktOWMyNi04MjVhNmZhMGFiZjkifQ.OrmXhkHzHLfQkHE4aqHh7IurVpbuNIGDwfqLi2ztopQ' \
--header 'content-type: application/json' \
--data '{
"member_username": "arivin29",
"member_password": "admin"
}'
```

- Standard refresh token request:

```sh
curl --request POST \
--url http://apidev.hompes.id/v2/oauth/refresh \
--header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE4NjI0NjEsIm5iZiI6MTU2MTg2MjQ2MSwianRpIjoiZGVkYTI1NGMtZGM1Mi00MWFhLTg3MDQtYzg1MWZkMjE3OGFlIiwiZXhwIjoxNTYyNDY3MjYxLCJpZGVudGl0eSI6MTMsInR5cGUiOiJyZWZyZXNoIiwiY3NyZiI6ImFhODFkZjE1LWY5MzMtNGZjZi05MWUwLTUyZGI0YThmMjk4ZSJ9.P0l0zlr9ljC9c7H9ErjokExOD_BI1KPcz_9MKH7Gg1g' \
--header 'content-type: application/json' \
--data '{
"member_username": "arivin29",
"member_password": "admin"
}'
```

Gunakan https://jwt.io/ untuk melakukan validasi token JWT. Standard JWT yang diberikan mengandung data secret yang dapat digunakan aplikasi untuk melakukan akses private resource aplikasi yang terkait.

## TODO

- Single member login in app id
