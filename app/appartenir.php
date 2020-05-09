<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class appartenir extends Model
{
    protected $fillable = ['Individu_ID','groupe_groupeID','Annee'];
    protected $table = 'appaertenir';
    
        //pour désactiver les variables created_at et updated_at
	public $timestamps = false;

}
