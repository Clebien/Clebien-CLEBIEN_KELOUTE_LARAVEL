<!Doctype html>
<html>
@extends('template')

@section('contenu')
<head><title>GROUPE</title></head>
<body>
<main>

    <br>

	<div class="d-flex justify-content-around">
	 <h2> Afficher un groupe</h2>
	 <h2>Importer Excel</h2>
	 <h2>&nbsp;API JSON</h2>
	 <h2>Exporter Excel &emsp;</h2>
	</div>

	<div class="d-flex justify-content-around">
	
		{!! Form::open(['url' => 'groupe/{{$libelle}}','method' => 'post',]) !!}
		&emsp;
		@csrf
			<select name="libelle" id="choix">
				<option value="">Chosir un groupe</option>
				<option value="1">L2_MIASHS</option>
				<option value="2">L3_MIAGE_APPRENTISSAGE</option>
				<option value="3">L3_MIAGE_CLASSIQUE</option>
				<option value="4">PROFESSEUR</option>
			</select>
			<br><br>
			&emsp;&emsp;&emsp;&emsp;&emsp;
		{!! Form::submit('Envoyer', ['class' => 'btn btn-info']) !!}
		{!! Form::close() !!}
		
		<div>
		<br>
		<br>
		{!! Form::open(['url' => 'import-groupe','method' => 'get',]) !!}
		{!! Form::submit('Importer', ['class' => 'btn btn-info']) !!}
		{!! Form::close() !!}
		</div>
		<div>
		{!! Form::open(['url' => 'exportJson','method' => 'post']) !!}
		@csrf
			<select name="libelle" id="choix">
				<option value="">Chosir un groupe</option>
				<option value="1">L2_MIASHS</option>
				<option value="2">L3_MIAGE_APPRENTISSAGE</option>
				<option value="3">L3_MIAGE_CLASSIQUE</option>
				<option value="4">PROFESSEUR</option>
            </select>
			<br>
			 {!! $errors->first('libelle', '<small>:message</small>') !!}
			<br>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		{!! Form::submit('API', ['class' => 'btn btn-info']) !!}
		{!! Form::close() !!}
		</div>
		<div>
		{!! Form::open(['url' => 'exportGroupe','method' => 'post']) !!}
               		 @csrf
                        <select name="libelle" id="choix">
							<option value="">Chosir un groupe</option>
							<option value="1">L2_MIASHS</option>
							<option value="2">L3_MIAGE_APPRENTISSAGE</option>
							<option value="3">L3_MIAGE_CLASSIQUE</option>
							<option value="4">PROFESSEUR</option>

                        </select>
						<br>
						 {!! $errors->first('libelle', '<small>:message</small>') !!}
						<br>
						&emsp;&emsp;&emsp;&emsp;&emsp;
                    <input type="submit" class="btn btn-success" value="Exporter">
			{!! Form::close() !!}
		</div>
        </div>
	</div>
	<br>
	@if(isset($var))
                <div class="w-25 p-3">
                <div class="panel panel-success" align ="center">
                <div class="panel-heading">{{$var}}</div>
                </div>
                </div>
        @endif
	<div>
	<br>
	<div class="d-flex justify-content-center">
	@if(isset($collection))
    <div class="col-md-6">
		<div>
		<div class="panel panel-info" >
			<div class="panel-heading">
			@if(isset($titreGroupe))
				<h3 class="panel-title" align="center">GROUPE {{$titreGroupe}} </h3>
			@endif
			</div>
			<div class="table-responsive">
			<div class="panel-body">
			
				<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>Numéro</th>
								<th>Nom</th>
								<th>Prenom</th>
								<th>Groupe</th>
								<th>Annuaire</th>
								<th>Année</th>

							</tr>
						</thead>
					<tbody>
					@foreach ($collection as $user)
							<tr>
								<th>{{ $user->ID }}</th>
								<th class="text-primary">{{ $user->num }}</th>
								<th class="text-primary">{{ $user->nom }}</th>
								<th class="text-primary">{{ $user->prenom }}</th>
								<th class="text-primary">{{ $user->libelle }}</th>
								<th class="text-primary">{{ $user->titre }}</th>
								<th class="text-primary">{{ $user->Annee }}</th>
								<th>{{ link_to_route('groupe.edit', 'Modifier',[$user->ID], ['class' => 'btn btn-success btn-block']) }}</th>
								<th>{!! Form::open(['method' => 'DELETE', 'route' => ['groupe.destroy', $user->ID]]) !!}
									{!! Form::submit('Supprimer', ['class' => 'btn btn-danger btn-block', 'onclick' => 'return confirm(\'Vraiment supprimer cet\' .$user->ID ?)']) !!}
								</th>
							</tr>
					@endforeach
	  			</tbody>
			</table>
			</div>
		</div>
	</div>
	{{ $collection->links() }}
	@endif
	</div>
	</div>
	</main>
	<br><br><br>
	</body>
@endsection
</html>