<%-- 
    Document   : carritoProducto
    Created on : 22-may-2018, 23:42:49
    Author     : Saulp
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Reserva"%>
<%@page import="javax.jms.Session"%>
<%@page import="modelo.BOProcesarUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">
	<head>
		<title>Hotel SPA - Reservas</title>
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
                <script src="/hotelSPA/js/tablaconten.js"></script>
                <script src="/hotelSPA/js/accionadm.js"></script>
	</head>
        
	<body>
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
                                                    <h1><a href="/hotelSPA/html/SesionAdministrador.html">Administrador Hotel SPA</a></h1>						<nav id="nav">
						<nav id="nav">
                                                        <ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
                                                                                        <li><a href="/hotelSPA/jsp/indexSesionAdministrador.jsp">Menú Principal</a></li>
                                                                                        
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>


				<!-- Main -->
					<article id="main">
						<header>
							<h2>Hotel SPA - Reserva </h2>
							
						</header>
						<section class="wrapper style5">
							

                                        <!--DATAAAAAAAAAAAAAAAAATABLE---------------------------------------------->                            

                                            <div class="container">

                                             <table id="miReserva" class="table table-striped dt-responsive nowrap" style="width:100%">
                                                 <thead>
                                                     <tr>
                                                         <th>ID Reserva</th>
                                                         <th>Correo</th>
                                                         <th>Tipo Reserva</th>
                                                         <th>Llave tipo</th>
                                                         <th>Fecha</th>
                                                         <th>Estadia</th>
                                                         <th>Valido?</th>
                                                         <th>Nombre servicio</th>
                                                     </tr>
                                                 </thead>
                                                 <tbody>
                                                 <c:forEach var="miReserva" items="${lista2}">
                                                     <tr> 
                                                     <td> ${miReserva.idreserva} </td>
                                                     <td> ${miReserva.correo} </td>
                                                     <td> ${miReserva.tipoR} </td>
                                                     <td> ${miReserva.llavetipo} </td>
                                                     <td> ${miReserva.inie} </td>
                                                     <td> ${miReserva.estadia} </td>
                                                     <td> ${miReserva.valido} </td>
                                                     <td> ${miReserva.nomr} </td>
                                                    </tr>
                                                 </c:forEach>   
                                                 </tbody>
                                                 <tfoot>
                                                     <tr>
                                                         <th>ID Reserva</th>
                                                         <th>Correo</th>
                                                         <th>Tipo Reserva</th>
                                                         <th>Llave tipo</th>
                                                         <th>Fecha</th>
                                                         <th>Estadia</th>
                                                         <th>Valido?</th>
                                                         <th>Nombre servicio</th>
                                                     </tr>
                                                 </tfoot>
                                                </table>

                                         </div>
                                        <!--DATAAAAAAAAAAAAAAAAATABLE---------------------------------------------->                            
						</section>
					</article>
                                                 <div class="inner">
							
							<ul class="actions vertical">
								 <!--<li><a onclick="fRestar()" class="button fit special">Comprar seleccionados</a></li>-->
								 <!--<li><a onclick="fVaciar()" class="button fit">Vaciar carrito</a></li>--><li>
							</ul>
						</div>
			</div>
                        <div class="form-group">
                            <label for="last-name">Id de reserva:</label>
                            <input type="text" class="form-control" placeholder="Id de reserva" id="idReserva"  title="Id de reserva" value=""  maxlength="7" autocomplete="on" required>
                        </div>
                        <br/>
                        <br/>
                        <br/>
                        <div class="clearfix">
                                <input  type="button" id="cancelarReserva" value="Cancelar Reserva" class="btn btn-success btn-lg" />
                        </div>
                        <div class="clearfix">
                                <input  type="button" id="confirmarReserva" value="Confirmar Reserva" class="btn btn-success btn-lg" />
                        </div>
              
                
        
                       
	</body>
</html>
