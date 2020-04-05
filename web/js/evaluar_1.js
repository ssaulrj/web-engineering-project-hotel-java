
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready( function() { 
        var numrandom = Math.floor(Math.random()*6);
        document.getElementById("GPS").style.color = "black";
        switch(numrandom){
            case 0: document.getElementById("GPS").value  = "CANCUN"; break;
                case 1: document.getElementById("GPS").value  = "MERIDA"; break;
                    case 2: document.getElementById("GPS").value  = "OAXACA"; break;
                        case 3: document.getElementById("GPS").value  = "CDMX"; break;
                            case 4: document.getElementById("GPS").value  = "SLP"; break;
                                case 5: document.getElementById("GPS").value  = "CSL"; break;
                                        default: document.getElementById("GPS").value  = "ERROR"; break;
        }
});

$(document).ready( function() { 
        $("#botonenviar").click( function() {
        enviarInicio();
        });
});

$(document).ready( function() { 
        $("#botonRegistro").click( function() {
        enviarRegistro();
        });
});

$(document).ready( function() { 
        $("#precioxC").click( function() {
        document.getElementById("GPS").style.color = "black"; 
        document.getElementById("tiporr").style.color = "black";
        document.getElementById("tiporr").value  = "Habitacion"; //
        document.getElementById("servicioC").value  = ""; //
        document.getElementById("habitacionC").value  = ""; //
        document.getElementById("servicioC2").value  = ""; //
        });
});

$(document).ready( function() { 
        $("#servicioC").click( function() {
        document.getElementById("GPS").style.color = "black";
        document.getElementById("tiporr").style.color = "black";
        document.getElementById("tiporr").value  = "Servicio"; //
        document.getElementById("precioxC").value  = ""; //
        document.getElementById("habitacionC").value  = ""; //
        document.getElementById("servicioC2").value  = ""; //
        });
});

$(document).ready( function() { 
        $("#servicioC2").click( function() {
        document.getElementById("GPS").style.color = "black";
        document.getElementById("tiporr").style.color = "black";
        document.getElementById("tiporr").value  = "Paquete"; //
        document.getElementById("precioxC").value  = ""; //
        document.getElementById("servicioC").value  = ""; //
        });
});

$(document).ready( function() { 
        $("#habitacionC").click( function() {
        document.getElementById("GPS").style.color = "black";
        document.getElementById("tiporr").style.color = "black";
        document.getElementById("Paquete").value  = "Habitacion"; //
        document.getElementById("precioxC").value  = ""; //
        document.getElementById("servicioC").value  = ""; //
        });
});

$(document).ready( function() { 
        $("#buscarReserva").click( function() {
        var vdatosx  = ""; //valor de busqueda
        var vdatos2x = ""; //valor de busqueda
        var vdatosy  = ""; //valor de lugar de busqueda
        var vdatosP  = ""; //valor funcion
        alert ("Buscando reserva, un momento porfavor")
        if(document.getElementById("precioxC").value != ""){ 
            vdatosx = $("#precioxC").val();
            vdatos2x = " "; //valor de busqueda
            vdatosy = $("#GPS").val();
            vdatosP = "0";
        }  
        else if(document.getElementById("servicioC").value != ""){ 
            vdatosx = $("#servicioC").val();
            vdatos2x = " "; //valor de busqueda
            vdatosy = $("#GPS").val();
            vdatosP = "1";
        }
        else if(document.getElementById("servicioC2").value != ""){ 
            vdatosx = $("#habitacionC").val();
            vdatos2x = $("#servicioC2").val();
            vdatosy = $("#GPS").val();
            vdatosP = "2";
        }
        
            $.ajax({
                   type: 'POST',
                   url: '../BusquedaReserva',
                   data: { datavalor: vdatosx, datavalor2: vdatos2x, datalugar: vdatosy, datafun: vdatosP}, 
                   beforeSend: function () {
                     
                    },
                   success: function(data){ //funcion LISTA!
                        window.location.reload();
                        setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorRes.jsp#one";},1);
                        //Modificar aqui ip
                   }
            }); 
        });
});

$(document).on("keyup","#usuarioR",function (e) {
     var usuario_1 = $("#usuarioR").val();
     var vfuncion="3";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion, datausuario: usuario_1},
               beforeSend: function () {
                     
               },
               success: function(data){ //funcion LISTA!
                     //Si hay consulta entonces no aceptarla
                     if(data=="Ookusuario"){ 
                     document.getElementById("usuarioR").style.backgroundColor  = "#E6B0AA"; //rojo
                     }
                     else if(data!="Ookusuario"){
                     document.getElementById("usuarioR").style.backgroundColor = "#A9DFBF"; //verde
                     }
               }
        });  
});

$(document).on("keyup","#contrasenaR", function() {
     var pass_1 = $("#contrasenaR").val();
     var pass_2 = $("#contrasena2R").val();
     
     if(pass_1 == pass_2){
     document.getElementById("contrasenaR").style.backgroundColor  = "#A9DFBF"; //verde
     document.getElementById("contrasena2R").style.backgroundColor = "#A9DFBF";
     }
     else{
     document.getElementById("contrasenaR").style.backgroundColor  = "#E6B0AA"; //rojo
     document.getElementById("contrasena2R").style.backgroundColor = "#E6B0AA";      
     }
}); 

$(document).on("keyup","#contrasena2R", function() {
     var pass_1 = $("#contrasenaR").val();
     var pass_2 = $("#contrasena2R").val();
     
     if(pass_1 == pass_2){
     document.getElementById("contrasenaR").style.backgroundColor  = "#A9DFBF";
     document.getElementById("contrasena2R").style.backgroundColor = "#A9DFBF";
     }
     else{
     document.getElementById("contrasenaR").style.backgroundColor  = "#E6B0AA";
     document.getElementById("contrasena2R").style.backgroundColor = "#E6B0AA";      
     }
}); 

$(document).ready( function() { 
        $("#precioxC").change( function() {
            document.getElementById("precioxC").style.value = ""; //Poner sin datos
        });
});


function enviarInicio(){
        //alert($("#usuario1").val());
        alert("Procesando reserva, un momento porfavor...")
        var vdatacorreo1= $("#correo1").val();
        var vdatanombre1= $("#nombre1").val();
        var vdataapellido1= $("#apellido1").val();
        var vdatanum1= $("#num1").val();
        var vdatatiporr = $("#tiporr").val();
        var vdatadato2= $("#dato2").val();
        var vdatafecha= $("#fecha").val();
        var vdatadias= $("#dias").val();
        var vdataGPS= $("#GPS").val();
        
        var vfuncion="8";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion, datacorreo1: vdatacorreo1, datanombre1: vdatanombre1,
                       dataapellido1: vdataapellido1, datanum1: vdatanum1, datatiporr: vdatatiporr,
                       datadato2: vdatadato2,  datafecha: vdatafecha,  datadias: vdatadias, dataGPS: vdataGPS
                     },
               /*beforeSend: function () {
                     
               },*/
               success: function(data){ //funcion LISTA!
                     //alert(data);
                        var textid2 = data;
                        var text = "";
                        var text = textid2;
                        alert("Reserva realizada Tu ID es: "+text); 
                        setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/html/indexMenu.html";}  ,100);
                        //modificar i
               }
        });      
}