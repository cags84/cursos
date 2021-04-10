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

