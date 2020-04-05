<%-- 
    Document   : inicioSesion
    Created on : 11/06/2019, 11:54:20 AM
    Author     : PATY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión hotel SPA</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../css/stylesInicioSesion.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="#" />
</head>

<body>
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/evaluar_1.js"></script>
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
    <script> function irMenu(){ window.location.href= "indexMenu.html";  }</script>
    <script> function irRegistro(){ window.location.href= "indexRegistro.html";  }</script>
    
    <div class="container" id="registration-form">
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
                    <label for="contrasena1">Contraseña:</label>
                    <input type="password" name="contrasena1" class="form-control" id="contrasena1" placeholder="Ingresa la contraseña" maxlength="15"  required/> 
                </div>
                
                <div class="form-group">
                    <input  type="button" id="botoninicio" onclick="irMenu()" value="REGRESAR!" style="background-color: #d2bcbc" class="form-control" /> 
                </div>
                
                <div class="form-group">
                    <input  type="button" id="botonenviar" value=" OK, RESERVAR!  " style="background-color: #8ba479"  class="form-control" />
                </div>
            </form>
        </div>
    </div>
</body>

</html>