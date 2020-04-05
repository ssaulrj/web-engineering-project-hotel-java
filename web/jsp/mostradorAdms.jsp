<%-- 
    Document   : carritoProducto
    Created on : 22-may-2018, 23:42:49
    Author     : Saulp
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Administradores"%>
<%@page import="javax.jms.Session"%>
<%@page import="modelo.BOProcesarUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">
	<head>
		<title>Hotel SPA - Administradores</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<meta name="description" content="Bootstrap HTML5">
                <meta name="keywords" content="HTML5, CSS3, JavaScript">
                <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-3.2.1/dt-1.10.16/b-1.5.1/cr-1.4.1/fc-3.2.4/r-2.2.1/datatables.min.css"/>
                <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css"/>
                <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>  
                <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-3.2.1/dt-1.10.16/b-1.5.1/cr-1.4.1/fc-3.2.4/r-2.2.1/datatables.min.js"></script>
                <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
                
                <link rel="stylesheet" href="/hotelSPA/css/assets/css/main.css" />
                <script type="text/javascript" src="/hotelSPA/js/javasTablasC.js"></script> 
	</head>
        
	<body>
                 
                        <script src="/hotelSPA/js/evaluar.js"></script>
                        <script src="/hotelSPA/css/assets/js/jquery.scrollex.min.js"></script>
			<script src="/hotelSPA/css/assets/js/jquery.scrolly.min.js"></script>
			<script src="/hotelSPA/css/assets/js/skel.min.js"></script>
			<script src="/hotelSPA/css/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/hotelSPA/css/assets/js/main.js"></script>
		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<!-- Header -->
					<header id="header" class="alt">
                                                    <h1><a href="/hotelSPA/html/indexSesionInicio.html">Hotel SPA</a></h1>						<nav id="nav">
						<nav id="nav">
                                                        <ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
                                                                                        <li><a href="/hotelSPA/html/indexSesionAdministrador.html">Menú Principal</a></li>
                                                                                        
                                                                                        <li>
                                                                                        <form name="frmMensaje" action="/hotelSPA/ProcesarUsuarios" method="post" >
                                                                                        <input type="submit" value="Ver usuarios">
                                                                                        </form>
                                                                                        </li>
                                                                                        <li>
                                                                                        <form name="frmMensaje" action="/hotelSPA/ProcesarReserva" method="post" >
                                                                                        <input type="submit" value="Ver,editar Reservas">
                                                                                        </form>
                                                                                        </li>
                                                                                        <li>
                                                                                        <form name="frmMensaje" action="/hotelSPA/ProcesarServicio" method="post" >
                                                                                        <input type="submit" value="Ver,editar Servicios">
                                                                                        </form>
                                                                                        </li>
                                                                                        <li>
                                                                                        <form name="frmMensaje" action="/hotelSPA/ProcesarPaquetes" method="post" >
                                                                                        <input type="submit" value="Ver,editar Paquete">
                                                                                        </form>
                                                                                        </li>
                                                                                        <li>
                                                                                        <form name="frmMensaje" action="/hotelSPA/ProcesarAdms" method="post" >
                                                                                        <input type="submit" value="Ver,editar admin">
                                                                                        </form>
                                                                                        </li>
                                                                                        <li><a href="/hotelSPA/html/agregarAdm.html">Agregar administrador</a></li>
                                                                                        <li><a href="/hotelSPA/html/indexMenu.html">Cerrar sesión</a></li>nistrador.html">Menú Principal</a></li>
                                                                                        
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>


				<!-- Main -->
					<article id="main">
						<header>
							<h2>Hotel SPA - Administradores </h2>
							
						</header>
						<section class="wrapper style5">
							

                                        <!--DATAAAAAAAAAAAAAAAAATABLE---------------------------------------------->                            

                                            <div class="container">

                                             <table id="miAdministradores" class="table table-striped dt-responsive nowrap" style="width:100%">
                                                 <thead>
                                                     <tr>
                                                         <th>Cuenta </th>
                                                         <th>Password</th>
                                                         <th>Hotel</th>
                                                     </tr>
                                                 </thead>
                                                 <tbody>
                                                 <c:forEach var="miAdministradores" items="${lista3}">
                                                     <tr> 
                                                     <td>  <input type="submit" id="eleccionAdm" value="${miAdministradores.cuenta}">  </td>
                                                     <td> ${miAdministradores.password} </td>
                                                     <td> ${miAdministradores.nombrehotel} </td>
                                                    </tr>
                                                 </c:forEach>   
                                                 </tbody>
                                                 <tfoot>
                                                     <tr>
                                                         <th>Cuenta </th>
                                                         <th>Password</th>
                                                         <th>Hotel</th>
                                                     </tr>
                                                 </tfoot>
                                                </table>

                                         </div>
                                        <!--DATAAAAAAAAAAAAAAAAATABLE---------------------------------------------->                            
						</section>
					</article>
                                        <div class="inner">
                                            <div class="form-group">
                                                <label for="first-name">Cuenta:</label>
                                                <input type="text" class="form-control" placeholder="Correo/Cuenta" id="cuentaA"  title="Solo letras"  maxlength="30" autocomplete="on" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="first-name">Contraseña:</label>
                                                <input type="text" class="form-control" placeholder="Contraseña" id="contraA"  title="Solo letras"  maxlength="30" autocomplete="on" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="last-name">Hotel:</label>
                                                <datalist id="listaHoteles">
                                                    <option value="Cancún"></option>
                                                    <option value="CDMX"></option>
                                                    <option value="Cabo San Lucas"></option>
                                                    <option value="Puerto Vallarta"></option>
                                                    <option value="Mérida"></option>
                                                    <option value="Oaxaca"></option>
                                                    <option value="San Luis Potosí"></option>
                                                </datalist>
                                                <input list="listaHoteles" type="text" class="form-control" placeholder="Hotel" id="hotelA"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="20" autocomplete="on" required>
                                            </div>
							
					    <ul class="actions vertical">
						<li><a onclick="fRestar()" class="button fit special">Editar Administrador</a></li>
						<li><a onclick="fVaciar()" class="button fit">Borrar Administrador</a></li><li>
                                            </ul>
                                        </div>
			</div>
              
                
        
                       
	</body>
</html>
