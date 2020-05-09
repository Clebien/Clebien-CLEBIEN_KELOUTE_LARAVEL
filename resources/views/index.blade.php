<!Doctype html>
</html>
@extends('template')
 
@section('contenu')

<head>
	<title>INDIVIDU</title>

</head>
<body>
<main>
    <br><br><br><br><br>
	<div align="center">
    <div class="col-sm-offset-2 col-sm-6" align="center">
    	@if(session()->has('ok'))
			<div class="alert alert-success alert-dismissible">{!! session('ok') !!}</div>
		@endif
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title" align="center">Liste des individus</h3>
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
						<th>email</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					@foreach ($users as $individu)
						<tr>
							<td class="text-primary"><strong>{!! $individu->ID !!}</strong></td>
							<td class="text-primary"><strong>{!! $individu->num !!}</strong></td>
							<td class="text-primary"><strong>{!! $individu->nom !!}</strong></td>
							<td class="text-primary"><strong>{!! $individu->prenom !!}</strong></td>
							<td class="text-primary"><strong>{!! $individu->email !!}</strong></td>
							<td>{!! link_to_route('individu.show', 'Voir', [$individu->ID], ['class' => 'btn btn-success btn-block']) !!}</td>
							<td>{!! link_to_route('individu.edit', 'Modifier', [$individu->ID], ['class' => 'btn btn-warning btn-block']) !!}</td>
							<td>{!! link_to_route('ajouter.edit', 'Ajouter groupe', [$individu->ID], ['class' => 'btn btn-primary btn-block']) !!}</td>
							<td>
								{!! Form::open(['method' => 'DELETE', 'route' => ['individu.destroy', $individu->ID]]) !!}
									{!! Form::submit('Supprimer', ['class' => 'btn btn-danger btn-block', 'onclick' => 'return confirm(\'Vraiment supprimer cet utilisateur ?\')']) !!}
								{!! Form::close() !!}
							</td>
						</tr>
					@endforeach
	  			</tbody>
			</table>
			</div>
		</div>
		</div>
		<div>
		{!! $links !!}
		<br>
		{!! link_to_route('individu.create', 'Ajouter un individu', [], ['class' => 'btn btn-info pull-right']) !!}
		{!! Form::open(['url' => 'import-individu','method' => 'get']) !!}
		{!! Form::submit('Importer', ['class' => 'btn btn-info pull-left']) !!}
		{!! Form::close() !!}
		{!! Form::open(['url' => 'exportIndividu','method' => 'post']) !!}
		{!! Form::submit('Exporter', ['class' => 'btn btn-info pull-center']) !!}
		{!! Form::close() !!}
		</div>
		<br><br><br><br><br><br><br>
	</main>
    </body>
@endsection
</html>