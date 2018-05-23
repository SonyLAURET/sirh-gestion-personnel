<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link rel="stylesheet" href="creer-collab.css">
</head>

<body onload="validate()">
	<!--navbar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img  src="<%=getServletContext().getContextPath()%>/img/logo.jpg" alt="Logo" class="img-thumbnail"  id="img" />
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"> <img src="<%=getServletContext().getContextPath()%>/img/logo.jpg"
				alt="logo" class="img-thumbnail" />
			</span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Collaborateurs</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">Statistiques</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">Activités</a>
				</li>
			</ul>
		</div>
	</nav>
	<!--formulaire-->
	<div class="container">
		<h1>Nouveau Collaborateur</h1>
		<form method="get" action="/sgp/collaborateurs/lister">
			<div class="form-group row">
				<label for="name" class="col-6">Nom</label>
				<div class="col-6">
					<input id="name" name="name" type="text" class="form-control"
						required>
					<div class="invalid-feedback">le nom est obligatoire</div>
				</div>
			</div>

			<div class="form-group row">
				<label for="firstname" class="col-6">Prenom</label>
				<div class="col-6">
					<input id="firstname" name="firstname" type="text"
						class="form-control" required>
					<div class="invalid-feedback">le prénom est obligatoire</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="birthday" class="col-6">Date de naissance</label>
				<div class="col-6">
					<input id="birthday" name="birthday" type="date"
						class="form-control" required>
					<div class="invalid-feedback">la date de naissance est
						obligatoire</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="adress" class="col-6">Adresse</label>
				<div class="col-6">
					<textarea id="adress" name="adress" type="text"
						class="form-control" required></textarea>
					<div class="invalid-feedback">l'adresse est obligatoire</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="securitySocialNumber" class="col-6">Numéro de
					sécurité social</label>
				<div class="col-6">
					<input id="securitySocialNumber" pattern="[0-9]{15}" name="securitySocialNumber"
						maxlength="15" type="text" class="form-control" required>
					<div class="invalid-feedback">le numéro de sécurité sociale
						est obligatoire</div>
				</div>
			</div>
			<button class="btn offset-10" type="submit" data-toggle="modal"
				data-target="#modalId" id="create">Créer</button>
		</form>
	</div>
	<!--script-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
	<script>
		function validate() {
			var url = window.location.href;
			if (url.includes("errors")) {
				var element = document.getElementsByClassName("form-control");
				for (var i = 0; i < element.length; i++) {
					element[i].setAttribute("class", "is-invalid form-control");
				}
			}
		}
	</script>
</body>

</html>