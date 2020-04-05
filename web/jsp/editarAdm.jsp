<%-- 
    Document   : editarAdm
    Created on : 16-jun-2018, 21:42:02
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
    <title>Información de administrador                 </title>
</head>
<body>
    <form>
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/evaluarm.js"></script>   
    <script> function cancelar(){ window.location.href= "/hotelSPA/html/indexSesionAdministrador.html"  }</script>
    
    <div class="container" id="advanced-search-form">
        <div>
        <h2>Información del cliente:</h2>
        <form method="post" id="registerForm" name="registerForm">
            <br>
                <h4>Datos personales:</h4>
                
            <c:forEach var="miAdministrador" items="${listaA}">
            <div class="form-group">
                 <label for="first-name">Nombre</label>
                <input value="${miAdministrador.nombres}"  type="text" class="form-control" placeholder="Nombre" id="nombreRA"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="20" autocomplete="on" required>
            </div> 
            <div class="form-group">
                <label for="last-name">Primer Apellido</label>
                <input value="${miAdministrador.primerapellido}" type="text" class="form-control" placeholder="Primer Apellido" id="apellidoPRA"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="last-name">Segundo Apellido</label>
                <input value="${miAdministrador.segundoapellido}" type="text" class="form-control" placeholder="Segundo Apellido" id="apellidoMRA"  title="Solo letras" onkeypress="return ValidarPalabra(event,this)" maxlength="20" autocomplete="on" required>
            </div>
            <div class="form-group">
                <label for="last-name">Usuario</label>
                <input value="${miAdministrador.usuario}" type="text" class="form-control" placeholder="Usuario" id="usuarioRA" name="usuarioR" pattern="[A-Za-z0-9]" onkeypress="ValidarUsuario(this)" title="Solo números y letras" maxlength="20" autocomplete="on" disabled required>
            </div>
            <div class="form-group">
                <label for="country">Contraseña</label>
                <input value="${miAdministrador.contrasenia}" type="password" class="form-control" placeholder="Contraseña" id="contrasenaRA" maxlength="20" onkeypress="return ValidarC(event,this)" autocomplete="off"  required>
            </div>
            <div class="form-group">
                <label for="country">Repetir Contraseña</label>
                <input  value="${miAdministrador.contrasenia}" type="password" class="form-control" placeholder="Repetir Contraseña" id="contrasena2RA" maxlength="20" onkeypress="return ValidarC(event,this)"  autocomplete="off" required>
            </div>          
            </c:forEach>    
            
                  
    
            
                 
                    <button type="button" class="btn btn-info btn-lg btn-responsive" id="botonRegistroA"> <span ></span>Editar</button>
            <div class="clearfix">
                    <input  type="button" id="botonmenu" onclick="cancelar()" value="Cancelar" class="btn btn-success btn-lg" />
            </div>
        </div>
    </div>
    </form>   
    </body>
</html>
