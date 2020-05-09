<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class IndividuUpdateRequest extends Request
{

    public function authorize()
	{
		return true;
	}

	public function rules()
	{
		
		return [
            'nom' => 'required',
			'prenom' => 'required',
			'email' => 'required|email',
            'num' => 'required|unique',
            'annuaire' => 'required',
            'statut' => 'required',
            'groupe' => 'required'
            
        ];
	}

}