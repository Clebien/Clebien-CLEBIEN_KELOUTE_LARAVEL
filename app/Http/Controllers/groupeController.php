<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\individu;
use App\Support\Collection;



class groupeController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $groupe = DB::table('individu')
        ->select('ID','nom','prenom','num','libelle','titre','Annee')
        ->join('appartenir','individu.ID','=','appartenir.Individu_ID')
        ->join('groupe','appartenir.groupe_groupeID','=','groupe.groupeID')
        ->join('annuaire','annuaire.annuaireID','=','individu.annuaire')
        ->get();

        $collection = (new Collection($groupe))->paginate(10);
        return view('show',compact('collection'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    
    public function show($libelle)
    {   
        $libelle = request('libelle');


        $groupe = DB::table('individu')
        ->join('appartenir','individu.ID','=','appartenir.Individu_ID')
        ->join('groupe','appartenir.groupe_groupeID','=','groupe.groupeID')
        ->join('annuaire','annuaire.annuaireID','=','individu.annuaire')
        ->where('individu.groupe', $libelle)
        ->count();

        if($groupe == 0)
        {
            $var="Veuillez choisir un groupe dans la liste";
            return view('show', compact('var'));
        }
        else{
            
            $groupe = DB::table('individu')
            ->select('ID','nom','prenom','num','libelle','titre','Annee')
            ->join('appartenir','individu.ID','=','appartenir.Individu_ID')
            ->join('groupe','appartenir.groupe_groupeID','=','groupe.groupeID')
            ->join('annuaire','annuaire.annuaireID','=','individu.annuaire')
            ->where('individu.groupe',$libelle)
            ->get();

            $titreGroupe = DB::table('groupe')
            ->where('groupeID',request('libelle'))
            ->take(1)
            ->value('libelle');
            $collection = (new Collection($groupe))->paginate(5);
            $collection->withPath($libelle);
            return view('show', compact('collection','titreGroupe'));
        }

        
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function edit($id)
    {   

        $groupe = DB::table('individu')
        ->join('appartenir','individu.ID','=','appartenir.Individu_ID')
        ->join('groupe','appartenir.groupe_groupeID','=','groupe.groupeID')
        ->where('individu.ID','=', $id)
        ->get();
        
        $individu = (new Collection($groupe));

        return view('edit',compact('individu'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    { 
        request()->validate([
            'groupe'=>['required'],
            'Annee'=>['required'],
            'statut'=>['required'],
            'annuaire'=>['required']
        ]);
        DB::table('individu')
        ->where('ID',$id)
        ->update([
            'groupe'=>request('groupe'),
            'statut'=>request('statut'),
            'annuaire'=>request('annuaire')
        ]);

        DB::table('appartenir')
        ->where('Individu_ID',$id)
        ->update([
            'groupe_groupeID'=>request('groupe'),
            'Annee'=>request('Annee')
        ]);

        $var ="Modification effectuée" ;
        return view('show',compact('var'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $stat = DB::table('individu')
        ->select('nom','prenom','libelle')
        ->join('groupe','individu.groupe','=','groupe.groupeID')
        ->where('ID',$id)
        ->get();
  
        DB::table('individu')
        ->where('ID',$id)
        ->update([
            'groupe'=>null
        ]);

        DB::table('appartenir')
        ->where('Individu_ID',$id)
        ->delete();

        
        foreach($stat as $stat){
            $var="L'étudiant $stat->prenom $stat->nom à été supprimé du groupe $stat->libelle";
            return view('show',compact('var'));
        }
    }
}
