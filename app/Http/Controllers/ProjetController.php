<?php

namespace App\Http\Controllers;

use App\Http\Requests\IndividuRequest;
use Illuminate\Support\Facades\DB;

use App\Repositories\IndividuRepository;

use Illuminate\Http\Request;

class ProjetController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $IndividuRepository;

    public  function __construct(IndividuRepository $IndividuRepository)
    {
        $this->IndividuRepository = $IndividuRepository;
    }
    public function index()
    {
        $users=$this->IndividuRepository->getPaginate(10);
        $links=$users->render();
        return view('index',compact('users','links'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('individu');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(IndividuRequest $request)
    {
       
        $individu=$this->IndividuRepository->store($request->all());
        return redirect('individu')->withOk("l'etudiant ".$individu->nom." a été créé");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $individu=$this->IndividuRepository->getById($id);
        return view('showIndividu',compact('individu'));
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
        return view('modifierindividu',compact('individu'));
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
            'nom' =>['required'],
			'prenom' =>['required'],
			'email' =>['required','email'],
            'num' =>['required'],
            'annuaire' =>['required'],
            'statut' =>['required'],
        ]);
        DB::table('individu')
        ->where('ID',$id)
        ->update([
            'nom' =>request('nom'),
			'prenom' =>request('prenom'),
			'email' =>request('email'),
            'num' =>request('num'),
            'annuaire' =>request('annuaire'),
            'statut' =>request('statut'),
        ]);
        return redirect('individu')->withOk("l'etudiant ".$request->input('nom')." a été modifié");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('individu')
        ->where('ID',$id)
        ->delete();
        return redirect()->back();
    }
}
