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
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/stylesRegistro.css">
    <link rel="shortcut icon" href="#" />
    <title>Reservación</title>
</head>

<body>
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/evaluar.js"></script>
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
    <script>
    function ValidarC(e, campo) 
        {
            ///key es una variable que recoge el valor ASCII de la tecla pulsada.
            key = e.keyCode ? e.keyCode : e.which
                /// Validamos la tecla backspace
            if (key == 8){ return false;}
            
                ///En caso de que se presione cualquier otra tecla el valor no se introduce.
            return true;
        }
    </script>
    <script> function irMenu(){ window.location.href= "../html/indexMenu.html"  }</script>
    <script>
   // function ValidarUsuario(e, campo){ alert(this.value); }    
    </script>
    <label >Tú ubicación es:</label>
    <input type="text" name="GPSReservas" class="form-control" id="GPSReservas" placeholder="GPSReservas" title="GPSReservas" onkeypress="return ValidarPalabra(event,this)"  maxlength="15" disabled required/>
        
    <div class="container" id="advanced-search-form">
         <h2>Reservacion Hotel SPAs</h2>
        <form method="post" id="registerForm" name="registerForm">
            <br/>
            <h4>Teclee su ID de reservación</h4>
            <div class="form-group">
                <label for="first-name">ID reserva:</label>
                <input type="text" class="form-control" placeholder="Nombre" id="idReserva"  title="Solo letras" onkeypress="return ValidarNumero(event,this)" maxlength="7" autocomplete="on" required>
            </div>
            <br/>   
            <br/>  
            <br/>  
            <br/>
            <br/>  
            <br/> 
            
                <h4>Información reserva:</h4>
                <div class="form-group">
                    <label for="email">Correo electrónco</label>
                    <input list="lista" type="text" class="form-control" placeholder="Correo Electrónico" title="Correo" name="correoReserva" id="correoReserva" value="" maxlength="40" autocomplete="on" disabled required>  
                </div>
                <div class="form-group">
                    <label for="last-name">Nombre</label>
                    <input type="text" class="form-control" placeholder="Nombre" id="nombreReserva"  title="Nombre" value=""  maxlength="40" autocomplete="on" disabled required>
                </div>
                <div class="form-group">
                    <label for="last-name">Apellido</label>
                    <input type="text" class="form-control" placeholder="Apellido" id="apellidoReserva"  title="Apellido" value="" maxlength="40" autocomplete="on" disabled required>
                </div>
                <div class="form-group">
                    <label for="number">Teléfono</label>
                    <input type="text" class="form-control" placeholder="Telefono" id="telefonoReserva"  title="Telefono reserva" maxlength="40" value="" autocomplete="on" disabled required>
                </div>
                <div class="form-group">
                    <label for="last-name">Fecha</label>
                    <input type="text" class="form-control" placeholder="Fecha" id="fechaReserva"  title="Fecha reserva" value=""  maxlength="40" autocomplete="on" disabled required>
                </div>
                <div class="form-group">
                    <label for="last-name">Nombre de reserva</label>
                    <input type="text" class="form-control" placeholder="Nombre de Reserva" id="nombreresReserva"  title="Nombre de Reserva" value=""  maxlength="40" autocomplete="on" disabled required>
                </div>
                <div class="form-group">
                    <label for="last-name">Dias</label>
                    <input type="text" class="form-control" placeholder="Dias" id="diasReserva"  title="Dias" value=""  maxlength="40" autocomplete="on" disabled required>
                </div>
                <div class="form-group">
                    <label for="last-name">Reserva valida</label>
                    <input type="text" class="form-control" placeholder="Validez" id="validezReserva"  title="Validez" value=""  maxlength="40" autocomplete="on" disabled required>
                </div>
            <br/>   
            <br/>  
            <br/>  
            <br/>
            <br/>  
            <br/> 
            <br/>  
            <br/>  
            <br/>  
            <br/>
            <br/>  
            <br/>
            <br/>
            <br/>
            <br/>
            <div class="clearfix">
                    <input  type="button" id="botonmenu" onclick="irMenu()" value="Volver" class="btn btn-success btn-lg" />
            </div>
            <div class="clearfix"></div>
        </form>
    </div>
</body>
</html>

