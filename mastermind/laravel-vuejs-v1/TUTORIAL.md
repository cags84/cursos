# Tutorial del curso

## Paso 1, crear la base de datos en Mysql

Para crear la base de datos, primero creamos la el usuario con el que vamos a trabajar que debe ser diferente al root.

```sql
> CREATE USER 'carlos'@'localhost' IDENTIFIED BY 'password';
> GRANT ALL PRIVILEGES ON *.* TO 'carlos'@'localhost';
> FLUSH PRIVILEGES;
```

Ahora creamos la base de de datos.

```sql

DROP DATABASE `api_cortes`;

CREATE DATABASE IF NOT EXISTS `api_cortes` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `api_cortes`;

CREATE TABLE IF NOT EXISTS `terceros` (
    `id` INT(10) NOT NULL,
    `razon_social` VARCHAR(100) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `terceros`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `terceros`
    MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- Truncate table
DROP TABLE `cortes`;

CREATE TABLE IF NOT EXISTS `cortes` (
    `id` INT(10) NOT NULL AUTO_INCREMENT,
    `nit` VARCHAR(50) NOT NULL,
    `ref_pago` VARCHAR(50) NOT NULL,
    `razon_social` VARCHAR(100) NOT NULL,
    `ip` VARCHAR(100) NOT NULL,
    `deuda` decimal (19,2) NOT NULL,
    `celular` VARCHAR(100) NOT NULL,
    `estado` TINYINT(1) NULL,
    `mk_list_id` VARCHAR(20) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cortes` (`nit`, `razon_social`, `ip`, `deuda`, `celular`, `estado`, `updated_at`)
    VALUES('91530065', 'CARLOS ARMANDO GUZMAN SUA', '192.168.89.1', '235451.12', '3204173132', 1, now());
```


## Paso 2, setear el archivo de configuración .env

Colocamos la información de le aplicación, como el nombre la conexión a la base de datos, etc.

## Paso 3, creamos el sistema de login, con VUE

```bash
> composer require laravel/ui
> php artisan ui vue --auth
```

Ahora instalamos las dependencias de node.

```bash
> npm install && npm run dev
```

Volvemos a ejecutar para que compile todos los assets necesarios.

```bash
> npm run dev
```

## Paso 4, ejecutamos la migracion para que creemos y poblemos las bases de datos

```bash
> php atisan migrate
```

## Paso 5, verificamos que funcione correctamente el login, creando un usuario.

```bash
> use laravel_vuejs_v1;
> show tables;
+----------------------------+
| Tables_in_laravel_vuejs_v1 |
+----------------------------+
| failed_jobs                |
| migrations                 |
| password_resets            |
| users                      |
+----------------------------+
```
## Paso 6, Creamos el modelo para las tablas que vamos a trabajar.

```bash
> php artisan make:model -m Resume
```

Aquí creamos un modelo de nombre `Resume`, y con la opción -m le decimos que nos cree una migración.

## Paso 7, Ahora modificamos la migración para crear las columnas de la base de datos que necesitamos.

```php
public function up()
    {
        Schema::create('resumes', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('title');
            $table->string('name');
            $table->string('email');
            $table->string('website')->nullable();
            $table->string('picture')->nullable();
            $table->text('about')->nullable();
            $table->foreignId('user_id');
        });
    }
```

Ahora refrescamos la migraciones en laravel

```bash
> php artisan migrate
```
Y revisamos que todo este ok.

```sql
> show tables;
+----------------------------+
| Tables_in_laravel_vuejs_v1 |
+----------------------------+
| failed_jobs                |
| migrations                 |
| password_resets            |
| resumes                    |
| users                      |
+----------------------------+

> describe resumes;

MariaDB [laravel_vuejs_v1]> describe resumes;
+------------+---------------------+------+-----+---------+----------------+
| Field      | Type                | Null | Key | Default | Extra          |
+------------+---------------------+------+-----+---------+----------------+
| id         | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
| created_at | timestamp           | YES  |     | NULL    |                |
| updated_at | timestamp           | YES  |     | NULL    |                |
| title      | varchar(255)        | NO   |     | NULL    |                |
| name       | varchar(255)        | NO   |     | NULL    |                |
| email      | varchar(255)        | NO   |     | NULL    |                |
| website    | varchar(255)        | YES  |     | NULL    |                |
| picture    | varchar(255)        | YES  |     | NULL    |                |
| about      | text                | YES  |     | NULL    |                |
| user_id    | bigint(20) unsigned | NO   |     | NULL    |                |
+------------+---------------------+------+-----+---------+----------------+
```
## Paso 8, Ahora creamos el controlador

Ver en la documentación: https://laravel.com/docs/8.x/controllers#actions-handled-by-resource-controller

```bash

> php artisan make:controller --help

> php artisan make:controller ResumeController --model=Resume

```

## Paso 9, Modificamos el archivo web.php para agregar nuestras propias rutas

Creamos la ruta en el archivo, web.php

```php
use App\Http\Controllers\ResumeController;
....
Route::get('/resumes/create', [ResumeController::class, 'create']);

```

## Paso 10, Modificamos el controlador para que responda algo de pruebas, ResumeController

```php
public function create() {
    return response('Hola desde resume controller');
}
```

## Paso 11, Creamos la estrucura de las vistas.

En la carpeta views, creamos un directorio llamado resumes, y en este vamos a tener todas las vistas para la ruta resumes.

```
> mkdir -p app/resources/views/resumes
```
Dentro de ella creamos un archivo llamado create.blade.php, y agremaos el formulario para crear un resume.

Modificamos el controlador en el metodo create, para que muestre una vista.

```php
public function create() {
    return view('resumes.create');
}
```

## Paso 12, Modificamos el controladr y la vista para pasarle información.

ResumeController.php

```php
public function create() {
    $data = "Texto de prueba";
    return view('resumes.create', ['data' => $data]);
}
```


create.blade.php

```php
@extends('layouts.app')

@section('content')
<div class="container">
    {{ $data }}
</div>
@endsection
```

## Paso 13, Relaciones

Un usuario tiene varios curriculums, un curriculum(resume) pertenece a un solo usuario

- Modelos:

Resume.php

....

```php
public function user() { // Observar que el metodo se llama en singular
	$this->belongTo(User::class);
}
```

User.php 

```php
public function resumes() { // Observar que el metodo se llama en plural
	$this->hasMany(Resume::class);
}
```
## Paso 14, Proteger los controladores

Para ello en el controlador, crearemos un metodo constructor y le pasamos este middleware

```php
public function __construct() {
	$this->middleware('auth');
}
```

## Paso 15, Verificar los formularios

## Paso 16, Para procesar imagenes

```bash
> php artisan storage:link
> composer require intervention/image
```

## Paso 17, Politicas de seguridad

Politica que nos va a servir para aplicar seguridad

```bash
> php artisan make:policy --help
> php artisan make:policy -m Resume ResumePolicy
```

## Paso 18,
## Paso 19,
## Paso 20,