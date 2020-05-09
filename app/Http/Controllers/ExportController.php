<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\individu;
use DB;
use App\Exports\ExportGroupe;
use App\Exports\ExportIndividu;
use Maatwebsite\Excel\Facades\Excel;

class ExportController extends Controller
{

    public function exportGroupe()
    {
        return Excel::download(new ExportGroupe, 'Groupe.xls');
    }

    public function exportIndividu()
    {
        return Excel::download(new ExportIndividu, 'Individu.xls');
    }

}