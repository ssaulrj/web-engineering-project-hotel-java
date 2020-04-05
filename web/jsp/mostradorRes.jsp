<%-- 
    Document   : carritoProducto
    Created on : 22-may-2018, 23:42:49
    Author     : Saulp
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Reserva"%>
<%@page import="modelo.Usuarios"%>
<%@page import="javax.jms.Session"%>
<%@page import="modelo.BOProcesarUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">

<head>
                <title>Servicios y paquetes SPA</title>
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
    <script src="/hotelSPA/css/assets/js/jquery.scrollex.min.js"></script>
    <script src="/hotelSPA/css/assets/js/jquery.scrolly.min.js"></script>
    <script src="/hotelSPA/css/assets/js/skel.min.js"></script>
    <script src="/hotelSPA/css/assets/js/util.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="/hotelSPA/css/assets/js/main.js"></script>
    <!--<script src="/hotelSPA/js/jquery-3.3.1.min.js"></script> ERROR--> 
    <script src="/hotelSPA/js/evaluar_1.js"></script>
    <script src="/hotelSPA/js/tablaconten.js"></script>
    
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
    <script> function irMenu(){ window.location.href= "/hotelSPA/";  }</script>
    <script> function irRegistro(){ window.location.href= "/hotelSPA/html/indexRegistro.html";  }</script>
    
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
                                                                                        <li><a href="/hotelSPA/html/indexMenu.html">Menú Principal</a></li>
                                                                                        
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>


				<!-- Main -->
					<article id="main">
                                            <label for="precioxC">Tú ubicación es:</label>
                                            <input type="text" name="GPS" class="form-control" id="GPS" placeholder="GPS" title="GPS" onkeypress="return ValidarPalabra(event,this)"  maxlength="15" disabled required/>
					    <header>
                                                    <div class="container">
                                                        <!--<form name="frmMensaje1" action="/hotelSPA/procesarProducto" method="post" class="button fit special">-->
                                                        <div class="form-group">
                                                            <label for="precioxC">Precio de habitación ($):</label>
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
                                                            <option value="Snorker"></option>
                                                            <option value="SPA"></option>
                                                            <option value="Tour"></option>
                                                            <option value="Transporte"></option>
                                                            <option value="YATE"></option>
                                                            </datalist>
                                                            <input list="listaServicios" type="text" name="servicioC" class="form-control" id="servicioC" placeholder="Nombre de Servicio"  title="Servicio" onkeypress="return ValidarPalabra(event,this)"  maxlength="20" required/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="habitacionC">Paquete :</label>
                                                            
                                                            <datalist id="listaHab">
                                                            <option value="Doble"></option>
                                                            <option value="Familiar"></option>
                                                            <option value="Pareja"></option>
                                                            <option value="Sencilla"></option>
                                                            <option value="Suite"></option>
                                                            </datalist>
                                                            <input list="listaHab" type="text" name="habitacionC" class="form-control" id="habitacionC" placeholder="Tipo de habitacion"  title="Habitacion" onkeypress="return ValidarPalabra(event,this)"  maxlength="10" required />
                                                            
                                                            <datalist id="listaServicios2">
                                                            <option value="Auditorio"></option>
                                                            <option value="Bar"></option>
                                                            <option value="Buffet"></option>
                                                            <option value="Cabalgata"></option>
                                                            <option value="Gimnasio"></option>
                                                            <option value="Golf"></option>
                                                            <option value="Gotcha"></option>
                                                            <option value="Sauna"></option>
                                                            <option value="Snorker"></option>
                                                            <option value="SPA"></option>
                                                            <option value="Tour"></option>
                                                            <option value="Transporte"></option>
                                                            <option value="YATE"></option>
                                                            </datalist>
                                                            <input list="listaServicios2" type="text" name="servicioC2" class="form-control" id="servicioC2" placeholder="Nombre de Servicio"  title="Servicio2" onkeypress="return ValidarPalabra(event,this)"  maxlength="20" required/>
                                                        </div>
                                                        
                                                        <form class="button fit special">
                                                            <!--<input type="submit" value="R E S E R V A R" onclick="anuncioX()">-->
                                                            <a id="buscarReserva" class="button fit special">BUSCAR RESERVA!</a>
                                                        </form>   
                                                    </div>
                                                  <a href="#one" class="more scrolly">¡Ver consulta!</a>
					    </header>
					    <section class="wrapper style5">
							

                                        <!--DATAAAAAAAAAAAAAAAAATABLE---------------------------------------------->                            

                                            <div id="one" class="container">

                                             <table id="miBusqueda" class="table table-striped dt-responsive nowrap" style="width:100%">
                                                 <thead>
                                                     <tr>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Elegir </th>
                                                     </tr>
                                                 </thead>
                                                 <tbody>
                                                 <c:forEach var="miBusqueda" items="${lista2}">
                                                     <tr> 
                                                     <td> ${miBusqueda.dato0} </td>
                                                     <td> ${miBusqueda.dato1} </td>
                                                     <td> ${miBusqueda.dato2} </td>
                                                     <td> ${miBusqueda.dato3} </td>
                                                     <td> ${miBusqueda.dato4} </td>
                                                     <td> ${miBusqueda.dato5} </td>
                                                     <td> ${miBusqueda.dato6} </td>
                                                     <td> <button type="button" class="btn">Elegir!</button> </td>
                                                    </tr>
                                                 </c:forEach>   
                                                 </tbody>
                                                 <tfoot>
                                                     <tr>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Dato </th>
                                                         <th>Elegir </th>
                                                     </tr>
                                                 </tfoot>
                                                </table>
                                                <a href="http://192.168.0.8:8080/hotelSPA/jsp/mostradorRes.jsp" class="more scrolly">¡Inicio!</a>    
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
     
 
    <div class="container" id="twoform">
        <h2>Información de reserva:</h2>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="dato1" id="dato1" maxlength="20" onkeypress="return ValidarC(event,this)" autocomplete="off" disabled required>
            </div>
            
            <div class="form-group">
                <input type="text" class="form-control" placeholder="dato2" id="dato2" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" disabled required>
            </div> 
        
            <div class="form-group">
                <input type="text" class="form-control" placeholder="dato3" id="dato3" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" disabled required>
            </div> 
        
            <div class="form-group">
                <input type="text" class="form-control" placeholder="dato4" id="dato4" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" disabled required>
            </div> 
        
            <div class="form-group">
                <input type="text" class="form-control" placeholder="dato5" id="dato5" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" disabled required>
            </div> 
        
            <div class="form-group">
                <input type="text" class="form-control" placeholder="dato6" id="dato6" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" disabled required>
            </div> 
            
            <div class="form-group">
                <input type="text" class="form-control" placeholder="dato7" id="dato7" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" disabled required>
            </div>
            
            <div class="form-group">
                    <datalist id="listax">
                    <option value="Habitacion"></option>
                    <option value="Paquete"></option>
                    <option value="Servicio"></option>
                    </datalist>
                <input list="listax" type="text" class="form-control" placeholder="Tipo Reserva" id="tiporr" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off"  required>
            </div>
        
            <label for="fechaa">Fecha reservacion: AAAA-MM-DD</label>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="AAAA-MM-DD" id="fecha" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off"  required>
            </div>
        
            <label for="fechaa">Dias: </label>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Dias" id="dias" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off"  required>
            </div>
    </div> 
   
    <div class="container">
        <div class="image"></div>
        <div class="frm">
            <!--<h1 align="center"> ¡Inicia Sesión!</h1> -->
            
            <form  method="post" id="loginForm" name="loginForm">
                <div class="form-group">
                    <label for="correo1">Correo:</label>
                    <datalist id="lista">
                    <option value="@hotmail.com"></option>
                    <option value="@live.mx"></option>
                    <option value="@gmail.com"></option>
                    <option value="@yahoo.com"></option>
                    <option value="@outlook.com"></option>
                    <option value="@ipn.mx"></option>
                    <option value="@gob.mx"></option>
                    </datalist>
                    <input list="lista" type="text" name="correo1" class="form-control" id="correo1" placeholder="Ingresa Correo"  title="Correo"   maxlength="40" required/>
                </div>
                
                <div class="form-group">
                    <label for="numero1">Número telefónico:</label>
                    <input type="text" name="numero1" class="form-control" id="num1" placeholder="Ingresa número telefónico"  title="Solo números" onkeypress="return ValidarNumero(event,this)" maxlength="15" required/>
                </div>
                
                <div class="form-group">
                    <label for="nombre1">Nombre:</label>
                    <input type="text" name="nombre1" class="form-control" id="nombre1" placeholder="Ingresa Nombre"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="40" required/>
                </div>
                
                <div class="form-group">
                    <label for="apellido1">Apellido:</label>
                    <input type="text" name="apellido1" class="form-control" id="apellido1" placeholder="Ingresa Apellido"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="40" required/>
                </div>
                <!--
                <div class="form-group">
                    <label for="contrasena1">Contraseña:</label>
                    <input type="password" name="contrasena1" class="form-control" id="contrasena1" placeholder="Ingresa la contraseña" maxlength="15"  required/> 
                </div>
                -->
                <div class="form-group">
                    <input  type="button" id="letrero" value="" class="form-control" disabled />
                </div>
                <!--
                <div class="form-group">
                    <input  type="button" id="botonres" onclick="irRegistro()" value="Registrarse!" style="background-color: #FDE19B" class="form-control" />
                </div>
                -->
                <div class="form-group">
                    <input  type="button" id="botonmenu" onclick="irMenu()" value="REGRESAR!" style="background-color: #d2bcbc" class="form-control" /> 
                </div>
                
                <div class="form-group">
                    <input  type="button" id="botonenviar" value=" OK, RESERVAR!  " style="background-color: #8ba479"  class="form-control" />
                </div>
            </form>
        </div>
    </div>
</body>

</html>

