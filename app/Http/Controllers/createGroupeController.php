<?php

namespace App\Http\Controllers;
use App\Http\Requests\IndividuRequest;
use Illuminate\Support\Facades\DB;

use App\Repositories\IndividuRepository;

use Illuminate\Http\Request;

class createGroupeController extends Controller
{
    protected $IndividuRepository;

    public  function __construct(IndividuRepository $IndividuRepository)
    {
        $this->IndividuRepository = $IndividuRepository;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $request->validate([
            'libelle'=>['required']
        ]);

        $req=DB::table('individu')
        ->select('nom','prenom','num','libelle','titre','Annee')
        ->join('appartenir','individu.ID','=','appartenir.Individu_ID')
        ->join('groupe','appartenir.groupe_groupeID','=','groupe.groupeID')
        ->join('annuaire','annuaire.annuaireID','=','individu.annuaire')
        ->where('individu.groupe',request('libelle'))
        ->get();
        return response($req);
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
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $individu=$this->IndividuRepository->getById($id);
        return view('creerGroupe',compact('individu'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'Annee' =>['required'],
            'groupe' =>['required']
        ]);

        $req =DB::table('appartenir')
        ->where('Individu_ID',$id)
        ->count();
        if($req == 0)
        {
            DB::table('appartenir')
            ->insert([
                'Individu_ID'=>$id,
                'groupe_groupeID'=>request('groupe'),
                'Annee'=>request('Annee')
            ]);
            DB::table('individu')
            ->where('ID',$id)
            ->update([
                'groupe'=>request('groupe'),
            ]);
            return redirect('individu')->withOk("L'individu ".$request->input('nom')." a été ajouté au groupe");
        }
        else
        {
            return redirect('individu')->withOk("L'individu est déjà dans un groupe, allez à la page d'acceuil dans la section groupe pour modifier son groupe si vous le souhaitez"); 
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
