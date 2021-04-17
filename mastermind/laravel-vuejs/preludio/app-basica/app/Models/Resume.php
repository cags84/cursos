<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Resume extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [
        'id',
        'created_at',
        'updated_at'
    ];

    /**
     * Relacion contra el modelo User
     */
    public function user() {
        // Un portadolio en particular solo puede estar asociado a un usuario
        return $this->belongsTo(User::class);
    }
}
