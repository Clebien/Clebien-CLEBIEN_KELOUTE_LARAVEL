<!Doctype html>
</html>
@extends('template')
 
@section('contenu')

<head><title>INDIVIDU_GROUPE</title></head>
<body>
    <main>
    <br>
    <div class="col-sm-offset-4 col-sm-4">
        <div class="panel panel-info">
            <div class="panel-heading">Ajouter <strong>{{ $individu->nom }}</strong> à un groupe</div>
            <div class="panel-body"> 
          {!! Form::model($individu, ['route' => ['ajouter.update', $individu->ID], 'method' => 'put', 'class' => 'form-horizontal panel']) !!}
    
                    <div class="form-group {!! $errors->has('groupe') ? 'has-error' : '' !!}">
                     {!! Form::select('groupe', array('1'=>'L2_MIASHS','2'=>'L3_MIAGE_APPRENTISSAGE','3'=>'L3_MIAGE_CLASSIQUE','4'=>'PROFESSEUR'),null, ['class' => 'form-control', 'placeholder' => 'Groupe']) !!}
                        {!! $errors->first('groupe', '<small class="help-block">:message</small>') !!}
                    </div>
                    <div class="form-group {!! $errors->has('libelle') ? 'has-error' : '' !!}">
					  	{!! Form::number('Annee', null, ['class' => 'form-control', 'placeholder' => 'Année']) !!}
					  	{!! $errors->first('Annee', '<small class="help-block">:message</small>') !!}
				</div>

                    {!! Form::submit('Envoyer !', ['class' => 'btn btn-info pull-right']) !!}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
    </main>
    </body>
@endsection
</html>