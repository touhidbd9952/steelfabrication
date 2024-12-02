<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\User;

class Category extends Model
{
    use HasFactory;
    //fillable
    protected $guarded = [];

    //relation with user table
    public function user()
    {
        return $this->hasone(User::class,'id', 'user_id');
    }
}
