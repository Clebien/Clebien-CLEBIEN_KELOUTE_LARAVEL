<?php

namespace App\Exports;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


use App\individu;
use App\groupe;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportGroupe implements FromCollection, WithHeadings
{
        /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    public function collection()
    {
 
        request()->validate([
            'libelle'=>['required']
        ]);
        $stat = DB::table('individu')
                ->select('num','nom','prenom','libelle','libellé','Annee')
                ->leftjoin('appartenir','individu.ID','=','appartenir.Individu_ID')
                ->leftjoin('groupe','appartenir.groupe_groupeID','=','groupe.groupeID')
                ->leftjoin('annuaire','annuaire.annuaireID','=','individu.annuaire')
                ->where('individu.groupe',request('libelle'))
                ->get();
  
            return $stat;
        
    }

    public function headings():array{

        return [
            'Numéro         ',
            'Nom            ',
            'Prenom         ',
            'Groupe         ',
            'Annuaire       ',
            'Année          '
        ];
    }
}
