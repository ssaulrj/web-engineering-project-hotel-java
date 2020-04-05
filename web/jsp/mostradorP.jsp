<%-- 
    Document   : carritoProducto
    Created on : 22-may-2018, 23:42:49
    Author     : Saulp
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Producto"%>
<%@page import="javax.jms.Session"%>
<%@page import="modelo.BOProcesarFormulario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">
	<head>
		<title>Peluchelandia- Productos</title>
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
                <script type="text/javascript" src="/hotelSPA/js/javasTablas2.js"></script>
                 
                
	</head>
        
       
        
	<body>
                 
                  <script> function fInicio(){ 
                      
                    window.location.href= "/hotelSPA/html/indexInicioSesion.html";
                  }
                  </script>
                 
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
                                                    <h1><a href="/hotelSPA/html/indexMenu.html">Peluchelandia</a></h1>						<nav id="nav">
						<nav id="nav">
                                                        <ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
                                                                                        <li><a href="/hotelSPA/html/indexMenu.html">Menú Principal</a></li>
							
                                                                                        <li><a href="/hotelSPA/html/indexInicioSesion.html">Iniciar sesión</a></li>
                                                                                        <li><a href="/hotelSPA/html/indexRegistro.html">Registrarse</a></li>
											
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>


				<!-- Main -->
					<article id="main">
						<header>
							<h2>Peluches en tienda</h2>
							
						</header>
						<section class="wrapper style5">
							

                                        <!--DATAAAAAAAAAAAAAAAAATABLE---------------------------------------------->                            

                                            <div class="container">

                                             <table id="miProducto2" class="table table-striped dt-responsive nowrap" style="width:100%">
                                                 <thead>
                                                     <tr>
                                                         <th>Foto</th>
                                                         <th>Tamaño</th>
                                                         <th>Color</th>
                                                         <th>Costo</th>
                                                     </tr>
                                                 </thead>
                                                 <tbody>
                                                 <c:forEach var="miProducto2" items="${lista2}">
                                                     <tr> 
                                                     <td> <img src="/hotelSPA/${miProducto2.foto}" alt="" /> </td>
                                                     <td> ${miProducto2.tamanio}  </td>
                                                     <td> ${miProducto2.color}  </td>
                                                     <td> $${miProducto2.costo}  </td>
                                                    </tr>
                                                 </c:forEach>   
                                                 </tbody>
                                                 <tfoot>
                                                     <tr>
                                                       
                                                         <th>Foto</th>
                                                         <th>Tamaño</th>
                                                         <th>Color</th>
                                                         <th>Costo</th>
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
                                                                 <li><a onclick="fInicio()" class="button fit special">Comprar Productos</a></li>
							</ul>
						</div>
			</div>
              
                
        
                       
	</body>
</html>
