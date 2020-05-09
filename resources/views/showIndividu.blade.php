<!Doctype html>
<html>
@extends('template')


@section('contenu')

<head><title>INDIVIDU</title></head>

    <div class="col-sm-offset-4 col-sm-4">
    	<br>
		<div class="panel panel-info">	
			<div class="panel-heading">Fiche Etudiant</div>
			<div class="panel-body"> 
				<p><b>Nom</b> :    {{ $individu->nom }}</p>
				<p><b>Prenom</b>: {{ $individu->prenom }}</p>
				<p><b>Email : </b> {{ $individu->email }}</p>
				<p><b>Numéro etudiant : </b> {{ $individu->num }}</p>
				
				
			</div>
		</div>				
		<a href="javascript:history.back()" class="btn btn-info">
			<span class="glyphicon glyphicon-circle-arrow-left"></span> Retour
		</a>
	</div>
@endsection