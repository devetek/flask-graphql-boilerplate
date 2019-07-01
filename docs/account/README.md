# Tentang Account

Account adalah service pengelolaan member yang terdaftar di seluruh aplikasi devetek. Account akan bertanggung jawab dalam mengelola semua data member meliputi memberikan struktur data, penambahan data, menipulasi data ataupun menghapus data.

## Rules of Data

    - Setiap member dapat terdaftar di semua aplikasi devetek:
      - Hompes
      - PDAM
      - Edutech
      - Devi
      - Terpusat
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
  --header 'authoriaztion: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE4NjY5NDIsIm5iZiI6MTU2MTg2Njk0MiwianRpIjoiYzE5NmUyMGEtYjE5Mi00NmI4LTg3YmUtOTY1ZWIzMGUzNmRiIiwiZXhwIjoxNTYxOTUzMzQyLCJpZGVudGl0eSI6MiwiZnJlc2giOmZhbHNlLCJ0eXBlIjoiYWNjZXNzIiwiY3NyZiI6IjY2NDQxMzYzLWNlNWMtNDk5Yi1hZjA2LWJjZTI0ZGQ5Njc1MiJ9.t7XIgmex1GhtO9ZtFTG1SWEND8A7KkwMAAU8t6WJUqk' \
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
  --url http://apidev.hompes.id/v2/account/client/1 \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE4NjY5NDIsIm5iZiI6MTU2MTg2Njk0MiwianRpIjoiYzE5NmUyMGEtYjE5Mi00NmI4LTg3YmUtOTY1ZWIzMGUzNmRiIiwiZXhwIjoxNTYxOTUzMzQyLCJpZGVudGl0eSI6MiwiZnJlc2giOmZhbHNlLCJ0eXBlIjoiYWNjZXNzIiwiY3NyZiI6IjY2NDQxMzYzLWNlNWMtNDk5Yi1hZjA2LWJjZTI0ZGQ5Njc1MiJ9.t7XIgmex1GhtO9ZtFTG1SWEND8A7KkwMAAU8t6WJUqk'
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

- Standard add member request:

```sh
curl --request POST \
  --url http://apidev.hompes.id/v2/account/add \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE4Nzk3MjcsIm5iZiI6MTU2MTg3OTcyNywianRpIjoiZmNkY2Q2NGItZDBlYi00NTA2LThmYWUtN2UyZmRmNTRmOTVmIiwiZXhwIjoxNTYxOTY2MTI3LCJpZGVudGl0eSI6MSwiZnJlc2giOmZhbHNlLCJ0eXBlIjoiYWNjZXNzIiwiY3NyZiI6ImE4NWQ3Yjg3LWJhZjEtNDZiZi1hYjRmLTY2NDMwMjgwNGRmZSJ9.LlaUNFUElXdTACZji68zQkeJa2gYg_NF7rCwVJrbnQ0' \
  --header 'content-type: application/json' \
  --data '{
	"member_fullname": "Nedya Amrih Prakasa",
	"member_religion": "Islam",
	"member_email": [
		{
			"email_text": "prakasa@gmail.com",
			"email_primary": true
		}
	],
	"member_phone": [
		{
			"phone_text": "021344625813",
			"phone_primary": true
		}
	],
	"member_apps_ids": [
		{
			"client_id": 1
		}
	]

}'
```

- Standard update member request:

```sh
curl --request PUT \
  --url http://apidev.hompes.id/v2/account/update/2 \
  --header 'authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjE5MTQ5MjgsIm5iZiI6MTU2MTkxNDkyOCwianRpIjoiN2E3MWFlZWMtOTcxMC00OTdkLWE1NjEtYzUyZDU4ZjQwNmU2IiwiZXhwIjoxNTYyMDAxMzI4LCJpZGVudGl0eSI6MiwiZnJlc2giOmZhbHNlLCJ0eXBlIjoiYWNjZXNzIiwiY3NyZiI6IjcxZmQ1OWYwLWM0Y2MtNDg3Yi04M2ZjLTY4Y2YyN2YzOTMxNyJ9.GI4CjRM5f1aWDTuQ6ZSMXnU2PdJ4TF4_owOPXH8DB38' \
  --header 'content-type: application/json' \
  --data '{
	"member_username": "djona1",
	"member_fullname": "Jangan Lama Lama",
	"member_apps_ids": [
		{
			"client_id": 2
		}
	]

}'
```

### Wisp

Wisp adalah worker yang bertugas melakukan pengumpulan data user dan melakukan eksekusi berdasarkan filter yang telah di atur di dashboard account. Sebagai contoh, jika ingin melakukan push notifikasi terhadap user yang belum melakukan verifikasi data selama 1 bulan atau lebih.

## TODO

- Create dashboard account service
- Create member attribute, for flexible data (Common Group, Social Login)
- Log member activity service
- Member search service using elasticsearch
- Flexible endpoint get data list (filter, limit, offset, etc)
- Endpoint delete data member
