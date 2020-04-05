<%-- 
    Document   : editarProducto
    Created on : 17-jun-2018, 13:13:54
    Author     : Saulp
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Producto"%>
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
    <title>Editar producto</title>
</head>

<body>
    <script src="/hotelSPA/js/jquery-3.3.1.min.js"></script>
    <script src="/hotelSPA/js/evaluarPE.js"></script>
    <script> function irMenu(){ window.location.href= "/hotelSPA/html/indexSesionAdministrador.html"  }</script>
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
    
    <div class="container" id="advanced-search-form">
        <h2>Editar un producto</h2>
        <form method="post" id="registerForm" name="registerForm">
            <div>
                <br/>
                 <h4>Información del peluche:</h4>
           
            <div class="form-group">
                <label for="first-name">ID</label>
                <input type="number" class="form-control" placeholder="ID" min="1" id="idPE"  >
            </div>
           
            
            <div class="form-group">
                <label for="last-name">Color </label>
                <datalist id="listaP">
                    <option value="Amarillo"></option>
                    <option value="Purpura"></option>
                    <option value="Verde"></option>
                    <option value="Blanco"></option>
                    <option value="Cafe"></option>
                    <option value="Azul"></option>
                    <option value="Negro"></option> 
                    <option value="Rojo"></option>
                    <option value="Naranja"></option>    
                </datalist>
                <input  list="listaP" type="text" class="form-control" placeholder="Color" id="nombrePE" required>
            </div>
            <div class="form-group">
                <label for="last-name">Precio </label>
                <input  type="text" class="form-control" placeholder="Precio" id="precioPE" onkeypress="return ValidarNumero(event,this)" required>
            </div>
                 <div class="form-group">
                <label for="last-name">Peluches disponibles</label>
                <input  type="number" class="form-control" placeholder="Peluches disponibles" id="stockPE" min="0" required>
            </div>
                 <div class="form-group">
                <label for="last-name">Descripción </label>
                <input  type="text" class="form-control" placeholder="Descripción" id="desPE" required>
            </div>
                 
                 <div class="form-group">
                <label for="last-name">Ruta de Imagen </label>
                <input  type="text" class="form-control" placeholder="Ruta de Imagen" id="rutaPE" required>
            </div>
            
                 
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
            <input type="file" name="upload" class="btn btn-info btn-lg btn-responsive" id="real-fileE"  hidden="hidden" > 
            <br />
            <img width="25" alt="Imagen"  class="btn btn-success btn-lg" />
            
            <div class="clearfix">
                    <input  type="button" id="botoncargarE" value="Editar producto" class="btn btn-success btn-lg" />
            </div>
                 
                <div class="clearfix">
                    <input  type="button" id="botonmenu" onclick="irMenu()" value="Cancelar" class="btn btn-info btn-lg btn-responsive" />
            </div>
            </div>
            
               
            </div>
    
           
          
            <div class="clearfix"></div>
                        
      
    
</body>
</html>
