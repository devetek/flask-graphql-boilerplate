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
- member_gender
- member_place_of_birth
- member_birth_of_date
- member_religion
- member_password
- member_aboutme
- member_status

account_phone (many to one)

- phone_id
- phone_text
- phone_status
- phone_member_id (Foreign Key member_id)

account_email (many to one)

- email_id
- email_text
- email_status
- email_member_id (Foreign Key member_id)

member_client (many to many)

- client_id
- member_id

Sebagai gambaran besar, service account ini hanya mengatur rules utama dari banyak aplikasi. Untuk kebutuhan secara spesifik, aplikasi masing-masing akan bertanggung jawab menyediakan kebutuhan mereka. Namun jangka panjangnya, untuk dapat menghandle kebutuhan bisnis yang bergerak begitu cepat, diharapkan struktur data yang dibuat mampu mengikuti pergerakan bisnis yang begitu cepat. Pilahan utama untuk ini adalah no sql database. Mari kita lihat di upgrade versi selanjutnya.

API tersedia:

- Register app client

```sh
curl --request POST \
  --url http://localhost:5000/account/client/register \
  --header 'content-type: application/json' \
  --data '{
	"client_name": "Terpusat",
	"client_description": "Terpusat pusat",
	"client_code": "TPS"
}'
```

- Get client by ID

```sh
curl --request GET \
  --url http://localhost:5000/account/client/1
```

- Register member

```sh
curl --request POST \
  --url http://localhost:5000/account/register \
  --header 'content-type: application/json' \
  --data '{
	"member_username": "prakasa1904",
	"member_password": "admin",
	"member_email": [
		{
			"email_text": "prakasa@devetek.com",
			"email_status": true
		},
		{
			"email_text": "nedya.prakasa@gmail.com",
			"email_status": false
		},
		{
			"email_text": "na.raka45@gmail.com",
			"email_status": false
		}
	],
	"member_phone": [
		{
			"phone_text": "082113468822",
			"phone_status": true
		},
		{
			"phone_text": "081328169646",
			"phone_status": false
		}
	],
	"member_apps_ids": [
		{
			"client_id": 1
		},
		{
			"client_id": 3
		}
	]

}'
```

- Get member by ID

```sh
curl --request GET \
 --url http://localhost:5000/account/1

```
