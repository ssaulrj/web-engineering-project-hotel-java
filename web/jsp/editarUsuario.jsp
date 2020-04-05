<%-- 
    Document   : editarUsuario
    Created on : 16-jun-2018, 17:20:33
    Author     : Saulp
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Cliente"%>
<%@page import="javax.jms.Session"%>
<%@page import="modelo.BOProcesarFormulario2"%>
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
    <title>Registro Reluchelandia</title>
</head>

<body>
 
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/evaluarm.js"></script>
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
    <!--<script>
    function ValidarContra(campo2) 
        {
            var c2=document.getElementById("contrasena2R").value;

            if (campo2.value != c2){
                document.getElementById("contrasenaR").style.backgroundColor = "#D98880";
                document.getElementById("contrasena2R").style.backgroundColor = "#D98880";
            } 
            else{ 
                document.getElementById("contrasenaR").style.backgroundColor = "#52BE80";
                document.getElementById("contrasena2R").style.backgroundColor = "#52BE80";
            }
        }
    </script>-->
    <script> function irMenu(){ window.location.href= "/hotelSPA/html/indexSesionInicio.html"  }</script>
    <script>
   // function ValidarUsuario(e, campo){ alert(this.value); }    
    </script>
    
    <div class="container" id="advanced-search-form">
        <h2>Editar datos de Usuario</h2>
        <form method="post" id="registerForm" name="registerForm">
            <br/>
            <h4>Información general del usuario:</h4>
            
            <c:forEach var="miCliente" items="${listaE}">
            <div class="form-group">
                <label for="first-name">Nombre(s)</label>
                <input value="${miCliente.nombre}" type="text" class="form-control" placeholder="Nombre" id="nombreRE"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="last-name">Apellido Paterno</label>
                <input value="${miCliente.primerapellido}" type="text" class="form-control" placeholder="Apellido" id="apellidoPRE"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="last-name">Apellido Materno</label>
                <input value="${miCliente.segundoapellido}" type="text" class="form-control" placeholder="Apellido" id="apellidoMRE"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="last-name">Usuario</label>
                <input value="${miCliente.usuario}" type="text" class="form-control" placeholder="Usuario" id="usuarioRE" name="usuarioR" pattern="[A-Za-z0-9]" onkeypress="ValidarUsuario(this)" title="Solo números y letras" maxlength="20" autocomplete="on" disabled required>
            </div>
            <div class="form-group">
                <label for="country">Contraseña</label>
                <input value="${miCliente.contrasenia}" type="password" class="form-control" placeholder="Contraseña" id="contrasenaRE" maxlength="20" onkeypress="return ValidarC(event,this)" autocomplete="off"  required>
            </div>
            <div class="form-group">
                <label for="country">Repetir Contraseña</label>
                <input value="${miCliente.contrasenia}"  type="password" class="form-control" placeholder="Repetir Contraseña" id="contrasena2RE" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" required>
                <br/>  

            </div>
            <br/>   
            <br/>  
            <br/>  
            <h4>Medio de contacto:</h4>
            <div class="form-group">
                <label for="number">Teléfono</label>
                <input value="${miCliente.telefono}" type="text" class="form-control" placeholder="Numero" id="numberRE"  title="Solo números" onkeypress="return ValidarNumero(event,this)" maxlength="10" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="email">Correo electrónco</label>
                <datalist id="lista">
                    <option value="@hotmail.com"></option>
                    <option value="@live.mx"></option>
                    <option value="@gmail.com"></option>
                    <option value="@yahoo.com"></option>
                    <option value="@outlook.com"></option>
                    <option value="@ipn.mx"></option>
                    <option value="@gob.mx"></option>
                    
                </datalist>
                <input value="${miCliente.correo}" list="lista" type="text" class="form-control" placeholder="Correo Electrónico" name="emailR" id="emailRE" maxlength="40" autocomplete="on" required>  
            </div>
            <br/>  
            <br/>  
            <br/>  
            <br/>
            <br/>  
            <h4>Domicilio:</h4>
            <div class="form-group">
                <label for="category">Código Postal</label>
                <input value="${miCliente.codigopostal}" type="text" class="form-control" placeholder="Código Postal" id="cpRE"  title="Solo números" onkeypress="return ValidarNumero(event,this)" maxlength="5" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="education">Calle</label>
                <input value="${miCliente.calle}" type="text" class="form-control" placeholder="Calle" id="calleRE" pattern="[A-Za-z]" title="Solo letras" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="education">Colonia</label>
                <input value="${miCliente.colonia}" type="text" class="form-control" placeholder="Colonia" id="coloniaRE" onkeypress="return ValidarPalabra(event,this)" title="Solo letras" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="education">Municipio</label>
                <input value="${miCliente.delegacionmunicipio}" type="text" class="form-control" placeholder="Municipio" id="alcaldiaRE" onkeypress="return ValidarPalabra(event,this)" title="Solo letras" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="education">Numero</label>
                <input value="${miCliente.numero}" type="text" class="form-control" placeholder="Número" id="numRE"  title="Solo números" onkeypress="return ValidarNumero(event,this)" maxlength="4" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="education">Estado</label>
                <datalist id="listaestados">
                    <option value="Aguascalientes"></option>
                    <option value="Baja California Norte"></option>
                    <option value="Baja California Sur"></option>
                    <option value="Campeche"></option>
                    <option value="Chiapas"></option>
                    <option value="Chihuahua"></option>
                    <option value="Ciudad de México"></option>
                    <option value="Coahuila"></option>
                    <option value="Colima"></option>
                    <option value="Durango"></option>
                    <option value="Estado de México"></option>
                    <option value="Guanajuato"></option>
                    <option value="Guerrero"></option>
                    <option value="Hidalgo"></option>
                    <option value="Jalisco"></option>
                    <option value="Michoacán"></option>
                    <option value="Morelos"></option>
                    <option value="Nayarit"></option>
                    <option value="Nuevo León"></option>
                    <option value="Oaxaca"></option>
                    <option value="Puebla"></option>
                    <option value="Querétaro"></option>
                    <option value="Quintana Roo"></option>
                    <option value="San Luis Potosí"></option>
                    <option value="Sinaloa"></option>
                    <option value="Sonora"></option>
                    <option value="Tabasco"></option>
                    <option value="Tamaulipas"></option>
                    <option value="Tlaxcala"></option>
                    <option value="Veracruz"></option>
                    <option value="Yucatán"></option>
                    <option value="Zacatecas"></option>
                </datalist>
                <input value="${miCliente.estado}" list="listaestados" type="text" class="form-control" placeholder="Estado" id="edoRE"  onkeypress="return ValidarPalabra(event,this)" title="Solo letras" maxlength="20" autocomplete="on" required>
            </div>
            <br/><br/>
             <h4>Información de pago:</h4>
            <br/>
            <div class="form-group">
                
                <label for="first-name">Número de tarjeta</label>
                <input value="${miCliente.nt}" type="text" class="form-control" placeholder="Número de tarjera " id="ntRE" onkeypress="return ValidarNumero(event,this)" maxlength="18">
            </div>
                 
            <div class="form-group">
                <label for="last-name">Mes </label>
                <datalist id="listames">
                    <option value="01"></option>
                    <option value="02"></option>
                    <option value="03"></option>
                    <option value="04"></option>
                    <option value="05"></option>
                    <option value="06"></option>
                    <option value="07"></option>
                    <option value="08"></option>
                    <option value="09"></option>
                    <option value="10"></option>
                    <option value="11"></option>
                    <option value="12"></option>
                </datalist>
                <input value="${miCliente.mes}" list="listames" type="text" class="form-control" placeholder="MM" id="mmRE" onkeypress="return ValidarNumero(event,this)" maxlength="2">
            </div>
            <div class="form-group">
                <label for="last-name">Año </label>
                <input value="${miCliente.anio}" type="text" class="form-control" placeholder="YY" id="yyRE" onkeypress="return ValidarNumero(event,this)" maxlength="2">
            </div>
                 <div class="form-group">
                <label for="last-name">Nombre del titular </label>
                <input value="${miCliente.titular}" type="text" class="form-control" placeholder="Nombre del titular" id="titularRE"  onkeypress="return ValidarPalabra(event,this)" maxlength="30">
            </div>
                 <div class="form-group">
                <label for="last-name">Código de seguridad </label>
                <input value="${miCliente.cs}" type="text" class="form-control" placeholder="CCV" id="csRE" onkeypress="return ValidarNumero(event,this)" maxlength="3">
            </div>
            </c:forEach> 
               <br/>
               <br/>
            <div class="clearfix">
                    <input  type="button" id="botonmenu" onclick="irMenu()" value="Cancelar" class="btn btn-success btn-lg" />
            </div>
            <div class="clearfix"></div>
            <button type="button" class="btn btn-info btn-lg btn-responsive" id="botonRegistroE"> <span ></span> Guardar cambios</button>
            
            
        </form>
    </div>
  
</body>

</html>
