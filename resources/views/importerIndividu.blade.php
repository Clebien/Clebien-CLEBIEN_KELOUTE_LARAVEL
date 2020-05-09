<!DOCTYPE html>
<html>

@extends('template')
@section('contenu')
<head>
    <title>Import Excel </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
</head>
<body>
<div class="container">
@if ($errors->any())
        <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
   @if($message = Session::get('success'))
   <div class="alert alert-success alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
           <strong>{{ $message }}</strong>
   </div>
   @endif
   <div class="panel panel-default">
         <div class="panel-body">
           <h4>
                Assurez-vous qu'il s'agit d'un fichier d'extension xls ou xlsx et que les colonnes portent bien les entêtes dans l'ordre suivant:
                num,nom,prenom,email,annuaire,statut,groupe
            </h4>
        </div>
        <div class="panel-heading">
        <form action="{{ url('import-individu') }}" method="POST" name="importform" enctype="multipart/form-data">
                @csrf
                <input type="file" name="import_file" class="form-control">
                <br>
                <button class="btn btn-success">Import File</button>
            </form>
        </div>

 </div>
</body>
@endsection
</html>
