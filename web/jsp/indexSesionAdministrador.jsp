<%-- 
    Document   : carritoProducto
    Created on : 22-may-2018, 23:42:49
    Author     : Saulp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Hotel SPA</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/hotelSPA/css/assets/css/main.css" />
                <link rel="shortcut icon" href="#" />
	</head>
	<body class="landing">
		<!-- Page Wrapper -->
			<div id="page-wrapper">
                            <label >Tú ubicación es:</label>
                            <datalist id="listaGPS">
                                <option value="CANCUN"></option>
                                <option value="CDMX"></option>
                                <option value="CSL"></option>
                                <option value="SLP"></option>
                                <option value="MERIDA"></option>
                                <option value="OAXACA"></option>   
                            </datalist>
                            <input list="listaGPS" type="text" name="GPSadm" class="form-control" id="GPSadm" placeholder="GPSadm" title="GPSadm" value="" onkeypress="return ValidarPalabra(event,this)"  maxlength="15"  required/>
        
                                        <header id="header" class="alt">
                                                    <h1><a href="/hotelSPA/jsp/indexSesionAdministrador.jsp">Hotel SPAs</a></h1>						
						<nav id="nav">
                                                        <ul>
                                                            
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menú administrador</span></a>
									<div id="menu">
										<ul>
                                                                                        <li><a href="/hotelSPA/jsp/indexSesionAdministrador.jsp">Menú Principal</a></li>
                                                                                        
                                                                                        <li>
                                                                                            <form name="frmMensaje">
                                                                                            <input type="button" id="btnverusuario" value="Ver Usuarios">
                                                                                            </form>
                                                                                        </li>
                                                                                        <li>
                                                                                            <form name="frmMensaje" >
                                                                                            <input  type="button" id="btnverreserva" value="Ver/Editar Reserva">
                                                                                            </form>
                                                                                        </li>
                                                                                        <li>
                                                                                            <form name="frmMensaje">
                                                                                            <input  type="button" id="btnverservicio" value="Ver,editar Servicios">
                                                                                            </form>
                                                                                        </li>
                                                                                        <li>
                                                                                            <form name="frmMensaje" >
                                                                                            <input  type="button" id="btnverpaquetes" value="Ver,editar Paquetes">
                                                                                            </form>
                                                                                        </li>
                                                                                        <li>
                                                                                            <form name="frmMensaje" >
                                                                                            <input  type="button" id="btnverhabitacion"  value="Ver,editar Habitación">
                                                                                            </form>
                                                                                        </li>
                                                                                        
                                                                                        <li><a href="/hotelSPA/html/indexMenu.html">Cerrar sesión</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>
                            
                            <!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>Administrador de Hoteles SPAs</h2>
						</div>
					</section>
                                
				<!-- CTA -->
					
				<!-- Footer -->
					<footer id="footer">
						
					</footer>

			</div>

		<!-- Scripts -->
			<script src="/hotelSPA/css/assets/js/jquery.min.js"></script>
			<script src="/hotelSPA/css/assets/js/jquery.scrollex.min.js"></script>
			<script src="/hotelSPA/css/assets/js/jquery.scrolly.min.js"></script>
			<script src="/hotelSPA/css/assets/js/skel.min.js"></script>
			<script src="/hotelSPA/css/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/hotelSPA/css/assets/js/main.js"></script>
                        <script src="/hotelSPA/js/accionadm.js"></script>
                        <script src="/hotelSPA/js/ubicacion.js"></script>

	</body>
</html>