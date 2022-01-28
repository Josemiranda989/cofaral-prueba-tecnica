<h1 align="center">Welcome to Prueba Tecnica  👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1-blue.svg?cacheSeconds=2592000" />
  <a href="#" target="_blank">
    <img alt="License: Josemiranda989" src="https://img.shields.io/badge/License-Josemiranda989-yellow.svg" />
  </a>
  <a href="https://twitter.com/josemiranda989" target="_blank">
    <img alt="Twitter: josemiranda989" src="https://img.shields.io/twitter/follow/josemiranda989.svg?style=social" />
  </a>
</p>

> Api rest de productos farmaceuticos con SQL 

## Install

```sh
npm install
```
## environment variables

```sh
DB_USER = youruser DB_PASSWORD = yourpassword DB_SERVER = localhost DB_DATABASE = yourdatabase
```
## Usage

```sh
npm run build, npm start
```

## Run tests

```sh
npm run test
```

## Tools
Rest clients for vs (request and response in visual studio code)
Dotenv (manipulate environment variables)
Express-validator (middlewares to validate data)
Morgan (Http request logger middleware)
Supertest (testing Http services)
Jest (tests)
Nodemon (autorestart server when change the code)
## Author

👤 **JoseMiranda989**

## Script migration JSON to SQL
--Ejecutar paso 1
CREATE DATABASE Cofaral 

--Ejecutar paso 2
use Cofaral 

--Ejecutar paso 3
Declare @JSON varchar(max)
SELECT
    @JSON = Bulkcolumn
FROM
    OPENROWSET (
        BULK 'D:\LocalDev\DesafioCofaral\src\database\productos.json', 
        SINGLE_CLOB
    ) import
SELECT
    * INTO Productos
FROM
    OPENJSON (@JSON, '$.rows') WITH (
        [sapcode] int,
        [name] varchar(50),
        [presentation] varchar(250),
        [laboratorio] varchar(50),
        [droga] varchar(50),
        [tucuman] int,
        [salta] int,
        [chaco] int,
        [precio] decimal(10, 2)
    )

* Website: https://cvjosemiranda.netlify.app/
* Twitter: [@josemiranda989](https://twitter.com/josemiranda989)
* Github: [@josemiranda989](https://github.com/josemiranda989)
* LinkedIn: [@josemiranda989](https://linkedin.com/in/josemiranda989)

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_