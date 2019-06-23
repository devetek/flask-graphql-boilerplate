# Deskripsi arsitektur

Oauth adalah service authentication yang diperuntukkan bagi accounts yang terdaftar di semua aplikasi devetek. Service oauth bertanggung jawab dalam mengelola session user yang akan register dan atau sedang login. Dengan standard JWT, data yang diberikan kepada user adalah, roles user dalam akses sebuah aplikasi.

Melalui service account, oauth mendapatkan data user yang melakukan proses authentication dan kemudian memberikan response beruba JWT yang dapat digunakan sebagai token di berbagai platform (Browser, Desktop, Mobile Apps).

Standard request register/login:

```sh
curl --request POST \
  --url http://localhost:5000/oauth/registration \
  --header 'content-type: application/json' \
  --data '{
	"username": "prakasa1904",
	"password": "subaru",
	"app_id": 1
}'
```

Standard response register/login:

```sh
{
  "success": true,
  "message": "User prakasa1904 was created",
  "data": {
    "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjEyNjc0MDgsIm5iZiI6MTU2MTI2NzQwOCwianRpIjoiNjMyMzIyZmItZDkzZC00ZWFkLWFkMmEtNzVjYWExN2U4YWRkIiwiZXhwIjoxNTYxMzUzODA4LCJpZGVudGl0eSI6NjQwLCJmcmVzaCI6ZmFsc2UsInR5cGUiOiJhY2Nlc3MiLCJjc3JmIjoiYTUzZGI5MmItMWVmMC00ZDNmLWFhNjktOGY4ZjVlMjg5OTg1In0.HTIj0bYgwxP2FVPYhtccPq69aSOmtb40XcHhSe2xyvc",
    "refresh_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjEyNjc0MDgsIm5iZiI6MTU2MTI2NzQwOCwianRpIjoiZDU0M2VmMjQtZTMzZC00NGVhLWJiMGUtOTdiNDM4OThjOTQ5IiwiZXhwIjoxNTYxODcyMjA4LCJpZGVudGl0eSI6NjQwLCJ0eXBlIjoicmVmcmVzaCIsImNzcmYiOiIxMDIzNjRhYy04YWVmLTQ5MTktYTM2NS00MmIwYzM5MzRkZGUifQ.zvQf5UblZB9lLDWVKLDAvnHHrLNqoB-BIuzo2Vl2TdM"
  }
}
```

Gunakan https://jwt.io/ untuk melakukan validasi token JWT. Standard JWT yang diberikan mengandung data secret yang dapat digunakan aplikasi untuk melakukan akses private resource aplikasi yang terkait.
