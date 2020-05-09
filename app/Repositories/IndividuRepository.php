<?php

namespace App\Repositories;

use App\individu;

class IndividuRepository extends ResourceRepository
{
	protected $individu;

    public function __construct(individu $individu)
	{
		$this->model = $individu;
	}
	
}