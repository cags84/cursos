<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contract extends Model
{
    use HasFactory;

    protected $fillable = [
        'contract_num', 'contract_date', 'status_code', 'customer_id'
    ];

    public function customer() {
        return $this->belongsTo('App\Models\Customer', 'id');
    }

}
