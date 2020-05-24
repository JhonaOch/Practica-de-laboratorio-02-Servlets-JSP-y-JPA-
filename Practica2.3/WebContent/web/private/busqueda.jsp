<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">

<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<link rel="stylesheet" href="/Practica2.2/WebContent/web/Css/Index.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">



<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/css/mdb.min.css"
	rel="stylesheet">


<title>Busqueda</title>
</head>




<header>
	<c:set var="users" value="${requestScope['users']}" />


	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
		<div class="ui container col-xs-2 col-sm-2 col-md-1 col-mg-1">
			<a class="ui navbar-brand  top aligned tiny image"
				href="/Practica2.3/web/index.html"> <img
				src="/Practica2.3/web/img/logo.jpg" alt="">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="ui collapse navbar-collapse col-xs-2 col-sm-2 col-md-1 col-mg-1"
				id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="Agenda">Regresar
							<span class="sr-only">(current)</span>
					</a></li>


					<li class="nav-item"><a class="nav-link"
						href="Agenda?logout=true">Logout</a></li>



				</ul>


			</div>
		</div>
	</nav>


</header>





<div>








	<div>
		<h3 class="ui top attached header">Agenda</h3>
		<div class="ui attached segment">

			<c:choose>
				<c:when test="${users.size() > 0}">



					<table class="table table-striped table-responsive-md btn-table">



						<thead>
							<tr>
								<th>Usuario</th>
								<th>Correo</th>
								<th>Numero</th>


							</tr>
						</thead>

						<tbody>


							<c:set var="i" value="${0}" />

							<c:forEach var="user" items="${users}">
								<c:set var="i" value="${i+1}" />





								<tr data-toggle="modal" data-target="#exampleModal${i}"
									data-whatever="@mdo">
									<td>

										<div class="item">
											<img class="ui avatar image"
												src="/Practica2.3/web/img/busca.png">
											<div class="content">
												<div class="header">
													<h2>${user.nombres}-${user.apellidos}</h2>

												</div>
											</div>
										</div>
									</td>
									<td><h2>${user.correo}</h2></td>
									<td><h2>${user.lista[0].numero}</h2></td>
								</tr>

								<div class="modal fade" id="exampleModal${i}" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<h2 align="center">Usuario</h2>
											<div class="modal-header">


												<h3 class="modal-title" id="exampleModalLabel">${user.nombres}
													${user.apellidos}</h3>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<h5>Detalles de contacto</h5>
												<c:forEach var="telefono" items="${user.lista}">
													<p>
														<i class="phone icon"></i> <a
															href="tel:${telefono.numero}">${telefono.numero}</a>
														&#9679; ${telefono.tipo} &#9679; ${telefono.operadora}
													</p>

												</c:forEach>
											</div>
											<div class="modal-footer">


												<div class="modal-header">
													<a href="mailto:${user.correo}"
														class="ui small primary labeled icon button mail-user"
														style="background-color: rgb(42, 44, 46)"> <i
														class="envelope icon"></i> Enviar correo
													</a>
												</div>
											</div>
										</div>

									</div>
								</div>


							</c:forEach>

						</tbody>



					</table>


				</c:when>
				<c:otherwise>
					<h1>No hay contactos para esta busqueda</h1>
				</c:otherwise>
			</c:choose>
		</div>



	</div>

</div>



<!-- Footer -->
<!-- Footer -->
<footer class="page-footer font-small unique-color-dark">

	<div style="background-color: #6351ce;">
		<div class="container">

			<!-- Grid row-->
			<div class="row py-4 d-flex align-items-center">

				<!-- Grid column -->
				<div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
					<h6 class="mb-0"></h6>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-6 col-lg-7 text-center text-md-right">

					<!-- Facebook -->
					<a class="fb-ic"> <i class="fab fa-facebook-f white-text mr-4">
					</i>
					</a>
					<!-- Twitter -->
					<a class="tw-ic"> <i class="fab fa-twitter white-text mr-4">
					</i>
					</a>
					<!-- Google +-->
					<a class="gplus-ic"> <i
						class="fab fa-google-plus-g white-text mr-4"> </i>
					</a>
					<!--Linkedin -->
					<a class="li-ic"> <i class="fab fa-linkedin-in white-text mr-4">
					</i>
					</a>
					<!--Instagram-->
					<a class="ins-ic"> <i class="fab fa-instagram white-text">
					</i>
					</a>

				</div>
				<!-- Grid column -->

			</div>
			<!-- Grid row-->

		</div>
	</div>

	<!-- Footer Links -->
	<div class="container text-center text-md-left mt-5">

		<!-- Grid row -->
		<div class="row mt-3">

			<!-- Grid column -->
			<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

				<!-- Content -->
				<h6 class="text-uppercase font-weight-bold"
					style="color: rgb(85, 2, 141)">Contact Street</h6>
				<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
					style="width: 60px;">
				<p>Practica 2:Diseña y desarrolla modelos de software en
					diferentes niveles de abstracción y modelos de datos a nivel
					transaccional y analítico con entornos de desarrollo actuales</p>

			</div>
			<!-- Grid column -->

			<!-- Grid column -->
			<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

				<!-- Links -->
				<h6 class="text-uppercase font-weight-bold"
					style="color: rgb(85, 2, 141)">Agenda</h6>
				<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
					style="width: 60px;">
				<p>
					<a href="#!">Telefonos</a>
				</p>
				<p>
					<a href="#!">Usuarios</a>
				</p>
				<p>
					<a href="#!">Contactos</a>
				</p>


			</div>
			<!-- Grid column -->

			<!-- Grid column -->
			<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

				<!-- Links -->
				<h6 class="text-uppercase font-weight-bold"
					style="color: rgb(85, 2, 141)">Useful links</h6>
				<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
					style="width: 60px;">
				<p>
					<a href="#!">Jhona Ochoa</a>
				</p>
				<p>
					<a href="#!">Become an Affiliate</a>
				</p>
				<p>
					<a href="#!">Shipping Rates</a>
				</p>
				<p>
					<a href="#!">Help</a>
				</p>

			</div>
			<!-- Grid column -->

			<!-- Grid column -->
			<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

				<!-- Links -->
				<h6 class="text-uppercase font-weight-bold"
					style="color: rgb(85, 2, 141)">Contact</h6>
				<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
					style="width: 60px;">
				<p>
					<i class="fas fa-home mr-3"></i> Ecuador
				</p>
				<p>
					<i class="fas fa-envelope mr-3"></i> jochoac6@ups.edu.ec
				</p>
				<p>
					<i class="fas fa-phone mr-3"></i> + 01 234 567 88
				</p>
				<p>
					<i class="fas fa-print mr-3"></i> + 01 234 567 89
				</p>

			</div>
			<!-- Grid column -->

		</div>
		<!-- Grid row -->

	</div>
	<!-- Footer Links -->

	<!-- Copyright -->
	<div class="footer-copyright text-center py-3">
		© 2020 Copyright: <a href=""> Jhona.com</a>
	</div>
	<!-- Copyright -->

</footer>
<!-- Footer -->


















<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>



<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>



<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<!-- JQuery -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/js/mdb.min.js"></script>


</body>
</html>