<!Doctype html>
</html>
@extends('template')
 
@section('contenu')

<head><title>INDIVIDU</title></head>
<body>
    <main>
    <br>
    <div class="col-sm-offset-4 col-sm-4">
        <div class="panel panel-info">
            <div class="panel-heading">Modification du profil etudiant</div>
            <div class="panel-body"> 
          {!! Form::model($individu, ['route' => ['individu.update', $individu->ID], 'method' => 'put', 'class' => 'form-horizontal panel']) !!}
                <div class="form-group {!! $errors->has('nom') ? 'has-error' : '' !!}">
                        {!! Form::text('nom', null, ['class' => 'form-control', 'placeholder' => 'Votre nom']) !!}
                        {!! $errors->first('nom', '<small class="help-block">:message</small>') !!}
                    </div>

                    <div class="form-group {!! $errors->has('prenom') ? 'has-error' : '' !!}">
                        {!! Form::text('prenom', null, ['class' => 'form-control', 'placeholder' => 'Votre prenom']) !!}
                        {!! $errors->first('prenom', '<small class="help-block">:message</small>') !!}
                    </div>
                    <div class="form-group {!! $errors->has('email') ? 'has-error' : '' !!}">
                        {!! Form::email('email', null, array('class' => 'form-control', 'placeholder' => 'Entrez votre email')) !!}
                        {!! $errors->first('email', '<small class="help-block">:message</small>') !!}
                    </div>
                    <div class="form-group {!! $errors->has('num_etud') ? 'has-error' : '' !!}">
                        {!! Form::number('num', null, ['class' => 'form-control', 'placeholder' => 'Votre numero detudiant']) !!}
                        {!! $errors->first('num', '<small class="help-block">:message</small>') !!}
                    </div>
                    <div class="form-group {!! $errors->has('annuaire') ? 'has-error' : '' !!}">
                     {!! Form::select('annuaire', array('1'=>'HARPEGE','2'=>'APOGEE','3'=>'FORMASUP'),null, ['class' => 'form-control', 'placeholder' => 'Annuaire']) !!}
                        {!! $errors->first('annuaire', '<small class="help-block">:message</small>') !!}
                    </div>
                    <div class="form-group {!! $errors->has('statut') ? 'has-error' : '' !!}">
                     {!! Form::select('statut', array('1'=>'Etudiant','2'=>'Enseignant'),null, ['class' => 'form-control', 'placeholder' => 'Statut']) !!}
                        {!! $errors->first('statut', '<small class="help-block">:message</small>') !!}
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