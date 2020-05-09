<!Doctype html>
<html>
@extends('template')

@section('contenu')
<head>
    <title>HOME</title>
    <style>
        main{
            padding-top:10em;
        }
    </style>
</head>
<body>
    <main>
        <div class="jumbotron text-center">
            <p>
                <a href="/individu" class="btn btn-primary my-2">INDIVIDU</a>
                <a href="/groupe" class="btn btn-warning my-2">GROUPE</a>
            </p> 
        </div> 
    </main>
</body>
@endsection
</html>