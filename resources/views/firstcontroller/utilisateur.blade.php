@extends('layouts.general')

@section('contenu')
    <div class="titre"><h2>La page perso de {{$utilisateurr->name}}</h2></div>

    @auth
        @if(Auth::id() != $utilisateurr->id)

        @else
            <div class="user">
                <a class="deconnexion_button" href="http://127.0.0.1:8000/logout" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" role="button" data-pjax="">
                    <p>Déconnexion</p>
                </a>
                <div>
                    <form action="/utilisateur/update/{{Auth::id()}}" method="POST"  enctype="multipart/form-data" data-pjax>
                        @csrf
                        <label for="avatar" class="label-file col us"><img class="fit-user" src="{{$utilisateurr->url_avatar}}" alt="image utilisateur"></label>
                        <input type="file" id="avatar" name="avatar" value="{{old('url')}}" class="input_file">
                        <input type="email" name="email" placeholder="Votre nouvelle Adresse mail..." class="input_form form" value="{{$utilisateurr->email}}">
                        <input type="password" name="password" placeholder="Votre nouveau mot de passe..." class="input_form form">
                        <input type="submit" value="Valider" class="bouton_aut">
                    </form>
                </div>
        @endif
    @endauth
            </div>
    </div>
@endsection
