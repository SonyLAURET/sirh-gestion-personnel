<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <link rel="stylesheet" href="index.css" />
</head>

<body>
    <!--navbar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light"> 
            <img src="logo.jpg" alt="logo" class="img-thumbnail" hidden id="img"/>     
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"><img src="logo.jpg" alt="logo" class="img-thumbnail" /></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Collaborateurs</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Statistiques</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">ActivitÃ©s</a>
                </li>
            </ul>
        </div>
    </nav>

    <!--button pour ajouter de nouvelles personnes-->
    <input type="button" class="btn col-sm-3 offset-sm-9" value="Ajouter un nouveau collaborateur"></input>

    <!--contenainer de la page-->
    <div class="container">
        <h1>Les collaborateurs</h1>

        <!--chercher un collaborateur-->
        <div class="row" id="search">
            <div class="col-sm-5">
                <label for="startBy">Rechercher un nom ou prénom qui commence par : </label>
            </div>
            <div class="col-sm-4">
                <input type="text" id="startBy" />
                <input type="button" id="search" value="Rechercher" />
            </div>

            <div class="col">
                <input type="checkbox" id="voir" />
                <label for="voir">Voir les collaborateurs désactivés</label>
            </div>
        </div>
        <!--Filtrer par département-->
        <div class="row">
            <div class="col-sm-5 offset-lg-2" >
                <label for="departement">Filtrer par département : </label>
            </div>
            <div class="dropdown col">
                <a class="dropdown-toggle" role="button" href="#" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Tous
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="#">Comptabilité</a>
                    <a class="dropdown-item" href="#">Ressources Humaines</a>
                    <a class="dropdown-item" href="#">Informatique</a>
                </div>
            </div>

        </div>
        <br/>
        <!--prÃ©sentation des collaborateurs-->
        <div class="row" id="listeCollabo1">
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        Nom Prenom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <img class="card-img " src="logo.jpg" alt="Card image cap">
                            </div>
                            <div class="col-sm-8">
                                <p class="card-text">Fonction : ComptabilitÃ©</p>
                                <p class="card-text">Département : 45</p>
                                <p class="card-text">Email : mail@compta.com</p>
                                <p class="card-text">TÃ©lÃ©phone : 06.12.31.54.12 </p>
                            </div>
                        </div>
                        <div class="row">
                            <input class="offset-8" type="button" id="edit" value="Editer" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        Nom Prenom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <img class="card-img " src="logo.jpg" alt="Card image cap">
                            </div>
                            <div class="col-sm-8">
                                <p class="card-text">Fonction :</p>
                                <p class="card-text">DÃ©partement : </p>
                                <p class="card-text">Email : </p>
                                <p class="card-text">TÃ©lÃ©phone : </p>
                            </div>
                        </div>
                        <div class="row">
                            <input class="offset-8" type="button" id="edit" value="Editer" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        Nom Prenom
                    </div>
                    <div class="card-body ">
                        <div class="row">
                            <div class="col-sm-4">
                                <img class="card-img " src="logo.jpg" alt="Card image cap">
                            </div>
                            <div class="col-sm-8">
                                <p class="card-text">Fonction :</p>
                                <p class="card-text">DÃ©partement : </p>
                                <p class="card-text">Email : </p>
                                <p class="card-text">TÃ©lÃ©phone : </p>
                            </div>
                        </div>
                        <div class="row">
                            <input class="offset-8" type="button" id="edit" value="Editer" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br/>
        <div class="row" id="listeCollabo2">
                <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        Nom Prenom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <img class="card-img " src="logo.jpg" alt="Card image cap">
                            </div>
                            <div class="col-sm-8">
                                <p class="card-text">Fonction :</p>
                                <p class="card-text">DÃ©partement : </p>
                                <p class="card-text">Email : </p>
                                <p class="card-text">TÃ©lÃ©phone : </p>
                            </div>
                        </div>
                        <div class="row">
                            <input class="offset-8" type="button" id="edit" value="Editer" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        Nom Prenom
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <img class="card-img " src="logo.jpg" alt="Card image cap">
                            </div>
                            <div class="col-sm-8">
                                <p class="card-text">Fonction :</p>
                                <p class="card-text">DÃ©partement : </p>
                                <p class="card-text">Email : </p>
                                <p class="card-text">TÃ©lÃ©phone : </p>
                            </div>
                        </div>
                        <div class="row">
                            <input class="offset-8" type="button" id="edit" value="Editer" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        Nom Prenom
                    </div>
                    <div class="card-body ">
                        <div class="row">
                            <div class="col-sm-4">
                                <img class="card-img " src="logo.jpg" alt="Card image cap">
                            </div>
                            <div class="col-sm-8">
                                <p class="card-text">Fonction :</p>
                                <p class="card-text">DÃ©partement : </p>
                                <p class="card-text">Email : </p>
                                <p class="card-text">TÃ©lÃ©phone : </p>
                            </div>
                        </div>
                        <div class="row">
                            <input class="offset-8" type="button" id="edit" value="Editer" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
    crossorigin="anonymous"></script>

</html>