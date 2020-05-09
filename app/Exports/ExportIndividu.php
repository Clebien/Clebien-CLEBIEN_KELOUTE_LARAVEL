<?php

namespace App\Exports;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


use App\individu;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportIndividu implements FromCollection, WithHeadings
{
        /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    public function collection()
    {
        $stat = DB::table('individu')
                ->select('num','nom','prenom','email')
                ->get();
  
            return $stat;
        
    }

    public function headings():array{

        return [
            'Numéro                            ',
            'Nom                               ',
            'Prenom                            ',
            'Email                             '
        ];
    }
}
