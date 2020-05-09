@extends('template')

@section('contenu')
    <div class="col-sm-offset-4 col-sm-4">
    	<br>
		<div class="panel panel-info">	
			<div class="panel-heading">Fiche étudiant</div>
			<div class="panel-body"> 
				@foreach($individu as $individu)
				<p>Numéro : {{ $individu->num }}</p>
				<p>Nom : {{ $individu->nom }}</p>
				<p>Prénom : {{ $individu->prenom }}</p>
				{!! Form::model($individu, ['route' => ['groupe.update', $individu->ID], 'method' => 'put']) !!}
				<div class="form-group {!! $errors->has('groupe') ? 'has-error' : '' !!}">
                    {!! Form::select('groupe', array('1'=>'L2_MIASHS','2'=>'L3_MIAGE_APPRENTISSAGE','3'=>'L3_MIAGE_CLASSIQUE','4'=>'PROFESSEUR'),null, ['class' => 'form-control', 'placeholder' => 'Groupe']) !!}
                    {!! $errors->first('groupe', '<small class="help-block">:message</small>') !!}
                </div>	
                <div class="form-group {!! $errors->has('libelle') ? 'has-error' : '' !!}">
					  	{!! Form::number('Annee', null, ['class' => 'form-control', 'placeholder' => 'Année']) !!}
					  	{!! $errors->first('Annee', '<small class="help-block">:message</small>') !!}
				</div>
				<div class="form-group {!! $errors->has('annuaire') ? 'has-error' : '' !!}">
                    {!! Form::select('annuaire', array('1'=>'HARPEGE','2'=>'APOGEE','3'=>'FORMASUP'),null, ['class' => 'form-control', 'placeholder' => 'Annuaire']) !!}
                    {!! $errors->first('annuaire', '<small class="help-block">:message</small>') !!}
                </div>
                 <div class="form-group {!! $errors->has('statut') ? 'has-error' : '' !!}">
                    {!! Form::select('statut', array('1'=>'Etudiant','2'=>'Enseignant'),null, ['class' => 'form-control', 'placeholder' => 'Statut']) !!}
                    {!! $errors->first('statut', '<small class="help-block">:message</small>') !!}
                </div>
						{!! Form::submit('Envoyer', ['class' => 'btn btn-info pull-right']) !!}
				{!! Form::close() !!}

				@endforeach
			</div>
		</div>
		<a href="/groupe" class="btn btn-info">
			<span class="glyphicon glyphicon-circle-arrow-left"></span> Retour
		</a>
	</div>

@endsection