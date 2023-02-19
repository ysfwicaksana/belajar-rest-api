<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tool extends Model
{
    use HasFactory;

    protected $table = 'alat';

    protected $fillable = ['nama_alat','keterangan','resep_idresep'];

    public function recipe(){
        return $this->belongsTo(Recipe::class,'resep_idresep','idresep');
    }

}
