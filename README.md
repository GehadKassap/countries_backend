# Countries Backend

this is project mainly based on making a simple request to create new phone number and assign it to country
and then check if this phone number is valid to be assigned to this country or not . in both cases it will be saved in database but the difference will be the status of each number .
and after create new record we can search for specific country and display all valid and non valid phone numbers
and we can also search for specific status (OK or NOK) to get all valid and non valid numbers

## Technologies I used in backend

-   Laravel v ^9.19
-   RDBMS MYSQL

### Project structure in Laravel

-   in `App/Jobs` : I made a Job `FetchCoutriesJob` to request an api to get data about countries to be real data and fetch countries flag , country code and other related data about countries
-   in `Routes/api/web.php` I made all endpoints here
-   in `App\Http\Controllers\Api` I made new folder to contain all methods that will handle logic of api's in `CountryController`

## Installation

To run this project on your local machine

```bash
  git clone https://github.com/GehadKassap/countries_backend.git
```

after clone the project do the following

```bash
  composer install
```

copy the environment file in root folder

```bash
  cp .env.example .env
```

then create new database and replace the name in .env file or create database with the same name

```bash
  php artisan migrate
```

finally now you can run the project by the following command and test API's

```bash
  php artisan serve
```

## API Reference

#### Get all Countries

```http
  GET /api/all_countries
```

#### Get paginated Countries

```http
  GET /api/countries
```

#### search for specific country

```http
  GET /api/get_country/?country=${country_name}
```

| Parameter      | Type     | Description   |
| :------------- | :------- | :------------ |
| `country_name` | `string` | **Required**. |

#### search for specific phone status

```http
  GET /api/get_countries_status/?phone_status=${status}
```

| Parameter | Type     | Description   |
| :-------- | :------- | :------------ |
| `status`  | `string` | **Required**. |

#### create new phone number and assign it to specific country and pass in body these data

```http
  POST /api/country/save/
```

| Parameter      | Type     | Description           |
| :------------- | :------- | :-------------------- |
| `country_name` | `string` | **Required**.         |
| `country_code` | `string` | **Required**.         |
| `phone_number` | `number` | **Required**.         |
| `phone_status` | `string` | **Required(ok,nok)**. |
| `country_flag` | `string` | **Required**.         |
