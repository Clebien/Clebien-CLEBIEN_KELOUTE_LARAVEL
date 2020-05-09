<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class individu extends Model
{

	protected $table = "individu";
	
	protected $fillable = ['nom', 'prenom', 'email','num','annuaire','statut','groupe'];
	
    //pour désactiver les variables created_at et updated_at
	public $timestamps = false;

}
