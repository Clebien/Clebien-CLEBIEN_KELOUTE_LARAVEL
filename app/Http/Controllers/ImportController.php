<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Imports\importIndividu;
use App\Imports\ImportGroupe;
use Maatwebsite\Excel\Facades\Excel;
use DB;
use App\individu;


class ImportController extends Controller

{

    public function index()
    {
        $individu = individu::orderBy('ID','DESC')->get();
        $annee=DB::table('appartenir')->orderBy('Annee','asc')->take(1)->value('Annee');

        return view('import',compact('individu','annee'));
    }

    public function create()
    {
        $individu = individu::orderBy('ID','DESC')->get();

        return view('importerIndividu',compact('individu'));
    }


    public function importGroupe(Request $request)
    {
        $request->validate([
            'import_file' => 'required|mimes:xls,xlsx'
        ]);

        Excel::import(new ImportGroupe, request()->file('import_file'));


        return back()->with('success', ' ✅ Importation réussi ✌🏻🎉');
    }

    public function importIndividu(Request $request)
    {
        $request->validate([
            'import_file' => 'required|mimes:xls,xlsx'
        ]);

        Excel::import(new ImportIndividu, request()->file('import_file'));


        return back()->with('success', ' ✅ Importation réussi ✌🏻🎉');
    }


}
