<?php

namespace App\Imports;

use App\individu;
use App\appartenir;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\DB;

class ImportIndividu implements ToModel
{
    public function model(array $row)
    {
        $annuaireID=DB::table('annuaire')
              ->where('libelle',@$row[4])
              ->take(1)
              ->value('annuaireID');

        $statutID=DB::table('statut')
              ->where('libelle',@$row[5])
              ->take(1)
              ->value('statutID');

         $groupeID=DB::table('groupe')
              ->where('libelle',@$row[6])
              ->take(1)
              ->value('groupeID');

        DB::table('individu')
        ->updateOrInsert([
            'num'=>@$row[0],
            'nom'=>@$row[1],
            'prenom'=>@$row[2],
            'email'=>@$row[3],
            'annuaire'=>$annuaireID,
            'statut'=>$statutID,
            'groupe'=>$groupeID
        ]);
            
    }
}