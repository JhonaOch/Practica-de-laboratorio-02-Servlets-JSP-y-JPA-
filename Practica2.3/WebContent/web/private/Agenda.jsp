
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


<title>Agenda</title>
</head>




<header>

	<c:set var="user" value="${requestScope['user']}" />

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

			<form action="Busqueda">

				<div class="rigth menu">
					<div class="item ui">
						<div class="ui icon input">
							<input name="usuario" type="text" placeholder="Search..."
								size="70"> <i class="search link icon"></i> <input
								type="submit" class="ui blue submit button" value="Buscar">

						</div>
					</div>
				</div>

			</form>


			<div
				class="ui collapse navbar-collapse col-xs-2 col-sm-2 col-md-1 col-mg-1"
				id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="Agenda">Home
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





	<c:choose>
		<c:when test="${user.lista.size() > 0 }">

			<div>
				<h3 class="ui top attached header">Agenda</h3>
				<div class="ui attached segment">

					<table class="table table-striped table-responsive-md btn-table">

						<thead>
							<tr>
								<th>#</th>
								<th>Numero</th>
								<th>Tipo</th>
								<th>Operadora</th>
								<th>Opciones</th>
							</tr>
						</thead>

						<tbody>

							<c:set var="i" value="${0}" />

							<c:forEach var="telefono" items="${user.lista}">
								<c:set var="i" value="${i+1}" />


								<tr>
									<th scope="row">${i}</th>

									<td>${telefono.numero}</td>
									<td>${telefono.tipo}</td>
									<td>${telefono.operadora}</td>
									<td>
										<!-- Button trigger modal-->
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#modalSocial2${i}">Editar</button>

										<!--Modal: modalSocial-->
										<div class="modal fade" id="modalSocial2${i}" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog cascading-modal" role="document">

												<!--Content-->
												<div class="modal-content">

													<!--Header-->
													<div class="modal-header light-blue darken-3 white-text">
														<h4 class="title">
															<i class="fas fa-users"></i> Editar Telefono
														</h4>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>


													<div class="modal-body mb-0 text-center"></div>
													<form action="/Practica2.3/Editar" method="POST">
														<input type="hidden" name="idtel"
															value="${telefono.codigo}">
														<div class="modal-body">
															<div class="form-group">



																<label for="numero">Numero</label> <input type="text"
																	class="form-control" id="numero" name="numero"
																	value="${telefono.numero}" required="">
															</div>
															<div class="form-row">
																<div class="form-group col-md-6">
																	<label for="tipo">Tipo</label> <input type="text"
																		class="form-control" id="tipo" name="tipo" required=""
																		placeholder="Movil" value="${telefono.tipo}">
																</div>
																<div class="form-group col-md-6">
																	<label for="operadora">Operadora</label> <input
																		type="text" class="form-control" id="operadora"
																		name="operadora" required=""
																		placeholder="Claro-Movistar"
																		value="${telefono.operadora}">
																</div>
															</div>
														</div>
														<div class="modal-footer">

															<button type="submit" class="btn btn-primary">Guardar</button>
														</div>
													</form>



												</div>
												<!--/.Content-->



											</div>
											<!--/.Content-->

										</div>


										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#modalSocial8${i}">Eliminar</button>

										<!--Modal: modalSocial-->
										<div class="modal fade" id="modalSocial8${i}" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog cascading-modal" role="document">

												<!--Content-->
												<div class="modal-content">

													<!--Header-->
													<div class="modal-header light-blue darken-3 white-text">
														<h4 class="title">
															<i class="fas fa-users"></i> Eliminar Telefono
														</h4>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>









													<div>
														<div>
															<div></div>
															<div>
																<h4 style="color: blue;">El numero
																	${telefono.numero} se eliminara de tu agenda.</h4>
															</div>

															<div class="modal-footer">

																<a
																	href="/Practica2.3/Editar?delete=true&idTelefono=${telefono.codigo}"
																	class="btn btn-danger btn-ok"
																	style="color: rgb(42, 44, 46)">Eliminar</a>



															</div>






														</div>
													</div>
												</div>
											</div>


										</div> <!--/.Content-->


									</td>



								</tr>


							</c:forEach>

						</tbody>



					</table>
				</div>

			</div>

		</c:when>
	</c:choose>

</div>





<!-- Button trigger modal-->
<button type="button" class="btn btn-primary " data-toggle="modal"
	data-target="#modalSocial10">Agregar Telefono</button>

<!--Modal: modalSocial-->
<div class="modal fade" id="modalSocial10" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog cascading-modal" role="document">

		<!--Content-->
		<div class="modal-content">

			<!--Header-->
			<div class="modal-header light-blue darken-3 white-text">
				<h4 class="title">
					<i class="fas fa-users"></i> Registro Telefono
				</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<!--Body-->
			<div class="modal-body mb-0 text-center"></div>

			<form action="AgregarTelefono" method="POST">
				<div class="modal-body">
					<div class="form-group">
						<label for="numero">Numero</label> <input type="text"
							class="form-control" id="numero" name="numero" required=""
							placeholder="0968074185">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="tipo">Tipo</label> <input type="text"
								class="form-control" id="tipo" name="tipo" required=""
								placeholder="Movil-Convencional">
						</div>
						<div class="form-group col-md-6">
							<label for="operadora">Operadora</label> <input type="text"
								class="form-control" id="operadora" name="operadora" required=""
								placeholder="Tuenti">
						</div>
					</div>
				</div>
				<div class="modal-footer">

					<button type="submit" class="btn btn-primary">Guardar</button>
				</div>
			</form>



		</div>
		<!--/.Content-->


	</div>
	<!--/.Content-->

</div>

<!--Modal: modalSocial-->




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