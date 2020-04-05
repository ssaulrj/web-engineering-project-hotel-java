<%-- 
    Document   : carritoProducto
    Created on : 22-may-2018, 23:42:49
    Author     : Saulp
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Servicio"%>
<%@page import="modelo.Usuarios"%>
<%@page import="javax.jms.Session"%>
<%@page import="modelo.BOProcesarUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">

<head>
                <title>SPA - Servicio</title>
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
    <!--<script src="/hotelSPA/js/jquery-3.3.1.min.js"></script> ERROR--> 
    <script src="/hotelSPA/js/evaluar_1.js"></script>
    <script>
    function ValidarNumero(e, campo) 
        {
            ///key es una variable que recoge el valor ASCII de la tecla pulsada.
            key = e.keyCode ? e.keyCode : e.which
                /// Validamos la tecla backspace
            if (key == 8) return true
                /// Validamos las teclas del 0 al 9
            if (key > 47 && key < 58) {
                if (campo.value == "") return true
                regexp = /,[0-9]{2}$/
            return !(regexp.test(campo.value))
            }
                /// Validamos la tecla "."
            if (key == 46) {
            if (campo.value == "") return true;
            regexp = /^-*[0-9]+$/
            return regexp.test(campo.value);
            }
                ///En caso de que se presione cualquier otra tecla el valor no se introduce.
            return false
        }
    </script>
    <script>
    function ValidarPalabra(e, campo) 
        {
            ///key es una variable que recoge el valor ASCII de la tecla pulsada.
            key = e.keyCode ? e.keyCode : e.which
                /// Validamos la tecla backspace
            if (key > 7 && key < 9)   { return true}
                /// Validamos las teclas de A a Z
            if (key > 64 && key < 91)   return true
                /// Validamos las teclas de a a z
            if (key > 96 && key < 123)  return true
                /// Validamos las teclas de ñ/Ñ
            if (key > 163 && key < 166) return true
             
                /// Validamos la tecla "."
            if (key == 46) {
            if (campo.value == "") return false;
            regexp = /^-*[0-9]+$/
            return regexp.test(campo.value);
            }
                ///En caso de que se presione cualquier otra tecla el valor no se introduce.
            return false
        }
    </script>
       <!--> <script>
       function validar(){
            var vUsuario=document.getElementById("usuario").value;
           var vContrasena=document.getElementById("contrasena").value;
           
           if(vUsuario=="saul" && vContrasena=="saul"){ 
               document.getElementById("letrero").value="Iniciando sesión...";
               setTimeout(function(){ 
                                       document.getElementById("formularioInicioSesion").reset();
                                       window.location.href= "indexSesionMenu.html" 
                                    
                                    }, 2500); 
           }
           else{ 
               document.getElementById("letrero").value="Datos incorrectos :c";
               document.getElementById("formularioInicioSesion").reset();
           }
       } 
    </script> <!-->  
    <script> function irMenu(){ window.location.href= "/hotelSPA/html/indexMenu.html";  }</script>
    <script> function irRegistro(){ window.location.href= "/hotelSPA/html/indexRegistro.html";  }</script>

   <!-- Page Wrapper -->
    <div id="page-wrapper">
        <h2> Reservaciones SPA </h2>        
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
                                                    <!--<div class="container">
                                                        <div class="form-group">
                                                            <label for="precioxC">Precio ($):</label>
                                                            <input type="text" name="precioxC" class="form-control" id="precioxC" placeholder="Limite de precio"  title="Precio $" onkeypress="return ValidarNumero(event,this)"  maxlength="5" required/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="servicioC">Servicio :</label>
                                                            <datalist id="listaServicios">
                                                            <option value="Auditorio"></option>
                                                            <option value="Bar"></option>
                                                            <option value="Buffet"></option>
                                                            <option value="Cabalgata"></option>
                                                            <option value="Gimnasio"></option>
                                                            <option value="Golf"></option>
                                                            <option value="Gotcha"></option>
                                                            <option value="Sauna"></option>
                                                            <option value="Snarker"></option>
                                                            <option value="SPA"></option>
                                                            <option value="Tour"></option>
                                                            <option value="Transporte"></option>
                                                            </datalist>
                                                            <input list="listaServicios" type="text" name="servicioC" class="form-control" id="servicioC" placeholder="Nombre de Servicio"  title="Servicio" onkeypress="return ValidarPalabra(event,this)"  maxlength="20" required/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="habitacionC">Tipo de habitación :</label>
                                                            <datalist id="listaHab">
                                                            <option value="Doble"></option>
                                                            <option value="Familiar"></option>
                                                            <option value="Pareja"></option>
                                                            <option value="Sencilla"></option>
                                                            <option value="Suite"></option>
                                                            </datalist>
                                                            <input list="listaHab" type="text" name="habitacionC" class="form-control" id="habitacionC" placeholder="Tipo de habitacion"  title="Habitacion" onkeypress="return ValidarPalabra(event,this)"  maxlength="10" required />
                                                        </div>
                                                        
                                                        <form class="button fit special">
                                                            <input type="submit" value="R E S E R V A R" onclick="anuncioX()">
                                                            <a href="/hotelSPA/jsp/mostradorRes.jsp" class="button fit special">BUSCAR RESERVA!</a>
                                                        </form>   
                                                    </div> -->
                                                  <a href="#one" class="more scrolly">¡Hola!</a>
					    </header>
					    <section class="wrapper style5">
							

                                        <!--DATAAAAAAAAAAAAAAAAATABLE---------------------------------------------->                            

                                            <div id="one" class="container">

                                             <table id="miServicio" class="table table-striped dt-responsive nowrap" style="width:100%">
                                                 <thead>
                                                     <tr>
                                                         <th>ID</th>
                                                         <th>Nombre servicio</th>
                                                         <th>Horario</th>
                                                         <th>Costo</th>
                                                         <th>Capacidad</th>
                                                     </tr>
                                                 </thead>
                                                 <tbody>
                                                 <c:forEach var="miServicio" items="${lista2}">
                                                     <tr> 
                                                     <td> ${miServicio.idservicio} </td>
                                                     <td> ${miServicio.nombre_s} </td>
                                                     <td> ${miServicio.horario} </td>
                                                     <td> ${miServicio.costo} </td>
                                                     <td> ${miServicio.capacidad} </td>
                                                    </tr>
                                                 </c:forEach>   
                                                 </tbody>
                                                 <tfoot>
                                                     <tr>
                                                         <th>ID</th>
                                                         <th>Nombre servicio</th>
                                                         <th>Horario</th>
                                                         <th>Costo</th>
                                                         <th>Capacidad</th>
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
              
    
    <div class="container">
        <div class="image"></div>
        <div class="frm">
            <!--<h1 align="center"> ¡Inicia Sesión!</h1> -->
            
            <form  method="post" id="loginForm" name="loginForm">
                        <!--<div class="form-group">
                            <label for="last-name">Actualizar servicios:</label>
                            <label for="last-name">$:</label>
                            <input type="text" class="form-control" placeholder="Precio servicios" id="precioServicios"  title="Precio servicios" value=""  maxlength="40" autocomplete="on" required>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Tipo Servicios:</label>
                            <input type="text" class="form-control" placeholder="Tipo Servicios" id="tipoServicios"  title="Tipo Servicios" value=""  maxlength="40" autocomplete="on" required>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Lugar:</label>
                            <datalist id="listaGPS2">
                                <option value="CANCUN"></option>
                                <option value="CDMX"></option>
                                <option value="CSL"></option>
                                <option value="SLP"></option>
                                <option value="MERIDA"></option>
                                <option value="OAXACA"></option>   
                            </datalist>
                            <input list="listaGPS2" type="text" class="form-control" placeholder="Lugar" id="lugarServicios"  title="Lugar" value=""  maxlength="40" autocomplete="on" required>
                        </div>
                        <br/>
                        <br/>
                        <br/>
                        <div class="clearfix">
                                <input  type="button" id="actualizarServicio" value="Actualizar Servicio" class="btn btn-success btn-lg" />
                        </div>-->
            </form>
        </div>
    </div>
</body>

</html>

