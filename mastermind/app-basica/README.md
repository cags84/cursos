# MASTERMIND - LARAVEL - VUE

Para arrancar el server lo hacemos con el siguiente comando

```bash
> php artisan server --host=10.100.100.100 --port=8000
```

## Paso #1

Crear el proyecto

```bash
> cd ~/Code
> composer create-project --prefer-dist laravel/laravel app-basica
> cd ~/Code/app-basica
> php artisan --version
```
## Paso #2

Crear la base de datos

```bash
> mysql -u carlos -p
> CREATE DATABASE `laravel` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

## Paso #3

Implementar la autenticación, en laravel ya viene por defecto pero hay que hacer unos 
pasos para que funcione correctamente.

Paramos el servidor

```bash
> cd ~/Code/app-basica
> composer require laravel/ui
> php artisan ui vue --auth
> npm install
> npm run dev
> npm run dev
```
Si queremos que se quede en modo escucha, hacemos lo siguiente.

```bash
> cd ~/Code/app-basica
> npm run watch
```

## Paso #4

Ahora hacemos la migración de la base de datos.

```bash
> cd ~/Code/app-basica
> php artisan migrate
> mysql -u carlos -p
> use laravel;
> show tables;
> describe users;
```
Ahora procedemos al formulario y creamos un usuario.

http://sandbox.local:8000
http://10.100.100.100:8000

## Paso #5

Crear el primer modelo, va en singulas, "El modelo se llamda Resume, Portafolio en ingles".

```bash
> php artisan make:model Resume -m
```
Este comando nos crea dos archivos.
  - En la carpeta \App\Models\Resume.php -> Es la clase que representa al modelo
  - En la carpteta \App\database\**_create_resumes_table.php -> Es la migración

## Paso #6

Modificar la migración que se hizo anteriormente.

```php
public function up()
    {
        Schema::create('resumes', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('name');
            $table->string('email');
            $table->string('website')->nullable();
            $table->string('picture')->nullable();
            $table->text('about')->nullable();
            $table->foreignId('user_id');
            $table->timestamps();
        });
    }
```

Volvemos a ejecutar la migración

```bash
> cd ~/Code/app-basica
> php artisan migrate
```

## Paso #7

Ahora creamos el controlador, el nombre del controlador debe ser en singular seguido de la palabra Controller y podemos vincular el controlador
a un modelo con el flags --model=NombreModel

```bash
> php artisan make:controller --help
> php artisan make:controller ResumeController --model=Resume
```
Esto crea el controlador en la carpeta \App\Http\Controllers\ResumeController.php

[Laravel Controller](https://laravel.com/docs/8.x/controllers#actions-handled-by-resource-controller)

## Paso #8

Editamos el archivio web.php para agregar una ruta para ejemplo

```php
Route::get('/resumes/create', [App\Http\Controllers\ResumeController::class, 'create'])->name('resumes.create');
```

Ahora editamos el controladdor ResumeController y en el metodo de create adicionamos el siguiente código.

```php
public function create()
{
    return response('Hello world!');
}
```
## Paso #9

Ahora en vez de enviar un texto en plano, vamos a intentar enviar una vista, que funciona con blade.

En la ruta resources/views/ -> crearemos una carpeta que se va a llamar resumes, en la cual vamos a tener nuestras vistas asociadas a ese controlador {index, create, edit, show,.... etc}.

El nombre de la carpeta va en plural "resumes"

En ella creamos un archivo llamado `create.blade.php`, el cual va a contener un

```php
@extends('layouts.app')

@section('content')
    <div class="container">
        Hello World
    </div>
@endsection
```

y cambiamos en el controlador en el metodo create el siguiente código.

```php
public function create()
{
    return view('resumes.create');
}
```

Ahora abrimos el archivo en el navegador y veremos la vista apuntando desde la web http://sandbox.local/resumes/create

## Paso #10

Ahora vamos a enviar datos desde el controlador a la vista directamente desde el controlador, por lo cual vamos agregar, entonces para ello editamos el metodo create del controlador ResumeController y agregamos esto.

```php
public function create()
{
    $data = "test";
    //return view('resumes.create', ["data" => $data]);
    return view('resumes.create', compact('data'));
}
```
y en la vista modificamos el código para que se vea esto.

## Paso #11

Ahora vamos a cambiar la vista del create, para mostrar un formulario donde el cliente podra enviar los datos para guardar en la base de datos.

Modificamos el archivo de routes.php y le agregamos lo siguiente.

```php
Route::get('/resumes/create', [App\Http\Controllers\ResumeController::class, 'create'])->name('resumes.create');
Route::post('/resumes', [App\Http\Controllers\ResumeController::class, 'store'])->name('resumes.store');
```

modificamos la vista create.blade.php por esto.

```php
@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card">
        <div class="card-header">Create new Resume</div>

        <div class="card-body">
          <form method="POST" action="{{ route('resumes.create') }}">
            @csrf

            <div class="form-group row">
              <label for="title" class="col-md-4 col-form-label text-md-right">Title</label>

              <div class="col-md-6">
                <input id="title" type="title" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" required autocomplete="title" autofocus>

                @error('title')
                  <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                  </span>
                @enderror
              </div>
            </div>

            <div class="form-group row mb-0">
              <div class="col-md-8 offset-md-4">
                <button type="submit" class="btn btn-primary">
                  Save
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
```
Para probar que todo este ok, vamos a el metodo store del controlador Resume y se agregamos en dd.

```php
public function store(Request $request)
{
    dd($request);
}
```

Ahora vamos a la web http://sandbox.local:8000/resumes/create, llenamos el formulario y lo enviamos y deberiamos ver en debug de request.

Lo importante de esta lección es entender el tema de @csrf.

## Paso #11

Ahora vamos a guardar los datos enviados en el formulario.

Para ello modificamos el metodo store para insertar a la base de datos, pero antes de ellos vamos a modelar la relaciones de las tablas,
para ello nos vamos a Model/User.php, Model/Resume.php.

```php
/**
 * The attributes that are mass assignable.
 *
 * @var array
 */
protected $fillable = [
    'title',
    'name',
    'email',
    'website',
    'picture',
    'about',
    'user_id'
];
```
o la lógica inversa, osea lo que no podemos editar.

```php
protected $guarded = [
    'id',
    'created_at',
    'updated_at'
];
```

## Paso #12

Ahora vamos a crear las relacionanes partiendo del modelo que estamos editando anteriormente, la pregunta es, ¿Como sabemos cual usuario se relaciona con un resume(curriculum)?

Para ello creamos un metodo en el modelo, con la premisa de las relaciones.

Un usuario puede tener muchos curriculums, por lo cual al declarar el metodo se debe hacer en plurar, en este caso Modelo User, se crea un metodo con el nombre del otro Modelo en plural y se releaciona con $this->hasMany(Resume::class).

```php
public function resumes() {
    // El usuario tiene muchos curriculums
    return $this->hasMany(Resume::class);
}
```

Ahora tenemos que definir la contraria, porque si no no sirve, para ello nos vamos a el modelo al que hacemos referencia, que en este caso es App\Model\Resume.php, y creamos un metodo para relacion, en este caso esta relacion va ser en singular el metodo, dado que un curriculum en particular solo esta asociado con un usuario.

```php
/**
 * Relacion contra el modelo User
 */
public function user() {
    // Un portadolio en particular solo puede estar asociado a un usuario
    return $this->belongsTo(User::class);
}
```

## Paso #13

Ahora vamos al controlador y en el metodo store, vamos a intentar guardar la información que nos envian, como vamos a sacar la información de el usuario que esta registrado, necesitamos llamar a `auth()` que es el nos va a permitir ingresar al modelo `User` y como definimos las relaciones con la funcion `resumes()`, poder tener toda la información disponible para ingresar.

```php
public function store(Request $request)
{
    $user = auth()->user();
    
    $resume = $user->resumes()->create([
        'title' => $request['title'],
        'name' => $user->name,
        'email' => $user->email
    ]);

    return response("Created resume {$resume->id}");
}
```
Ahora podemos enviar los datos en el formulario y deberiamos poder ver la información en la base de datos.

## Paso #14

Ahora vamos a proteger los controladores en este caso de Resume, para ello vamos al controlador y creamos un constructor y adicionados esto.

```php
public function __construct()
{
    $this->middleware('auth');
}
```

## Paso #15

Modificamos el controlador Resume, para que una vez guardado los datos, nos redirija al index, primero creamos una ruta en el archivo web.php.

```php
Route::get('/resumes', [App\Http\Controllers\ResumeController::class, 'index'])->name('resumes.index');
Route::get('/resumes/create', [App\Http\Controllers\ResumeController::class, 'create'])->name('resumes.create');
Route::post('/resumes', [App\Http\Controllers\ResumeController::class, 'store'])->name('resumes.store');
Route::get('/resumes/{resume}', [App\Http\Controllers\ResumeController::class, 'show'])->name('resumes.show');
Route::get('/resumes/{resume}/edit', [App\Http\Controllers\ResumeController::class, 'edit'])->name('resumes.edit');
Route::delete('/resumes/{resume}', [App\Http\Controllers\ResumeController::class, 'destroy'])->name('resumes.destroy');
```

Ahora modificamos el controlador `ResumeController.php`, y en el metodo index, agregamos esta lógica.

```php
public function index()
{
    // Vamos a traer todos los resumes que tiene el user
    $resumes = auth()->user()->resumes;
    //dd($resumes);
    return view('resumes.index', compact('resumes'));
}
```

Creamos la vista resumes/index.blade.php

```php
@extends('layouts.app')

@section('content')
<div class="container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Title</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($resumes as $resume)
                <tr>
                    <td>
                        <a href="{{ route('resumes.show', $resume->id) }}">{{ $resume->title }}</a>
                    </td>
                    <td>
                        <div class="d-flex justify-content-end">
                            <div>
                                <a href="{{ route('resumes.edit', $resume->id) }}" class="btn btn-primary">Edit</a>
                            </div>
                            <div class="ml-2">
                                <a href="{{ route('resumes.destroy', $resume->id) }}" class="btn btn-danger">Delete</a>
                            </div>
                        </div>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
```

Ahora modificamos el metodo store para que haga un redirect a la vista index.

```php
public function store(Request $request)
{
    $user = auth()->user();
    
    $resume = $user->resumes()->create([
        'title' => $request['title'],
        'name' => $user->name,
        'email' => $user->email
    ]);

    return redirect()->route('resumes.index');
}
```

Visitamos la ruta de resumes y deberia renderizar el index.

```bash
> http://sandbox.local/resumes
```

## Paso #16

Ahora vamos a implementar edit en el controlador de ResumeController.php.

```php
public function edit(Resume $resume)
{
    //$resume = auth()->user()->resumes()->where('id', $request->id);
    //$resume = Resume::where('id', $request->resume)->first();
    return view('resumes.edit', compact('resume'));
}
```

Ahora creamos la vista resumes/edit.blade.php

```php
php artisan make:policy --help
 php artisan make:policy ResumePolicy --model=Resume
```

## Paso #17

Introducción a VUEJS

https://jsonresume.org/schema/

Por defecto al utilizar vue en la autenticación, se instala por defecto en el proyecto VueJS, podemos ver que laravel trae un archivo en `resources/js/components/ExampleComponent.vue`, donde podemos ver nuestro primer componente.

```bash
>
```

## Paso #18

```bash
>
```

## Paso #19

```bash
>
```

## Paso #20

```bash
>
```

## Paso #21

```bash
>
```