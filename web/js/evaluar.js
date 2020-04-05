
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready( function() { 
        var numrandom = Math.floor(Math.random()*6);
        document.getElementById("GPSReservas").style.color = "black";
        document.getElementById("idReserva").style.backgroundColor  = "#E6C45A"; //rojo
        switch(numrandom){
            case 0: document.getElementById("GPSReservas").value  = "CANCUN"; break;
                case 1: document.getElementById("GPSReservas").value  = "MERIDA"; break;
                    case 2: document.getElementById("GPSReservas").value  = "OAXACA"; break;
                        case 3: document.getElementById("GPSReservas").value  = "CDMX"; break;
                            case 4: document.getElementById("GPSReservas").value  = "SLP"; break;
                                case 5: document.getElementById("GPSReservas").value  = "CSL"; break;
                                        default: document.getElementById("GPSReservas").value  = "ERROR"; break;
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
        $("#idReserva").keyup( function() {
        document.getElementById("idReserva").style.backgroundColor  = "#E6B0AA"; //rojo
        document.getElementById("correoReserva").value = "";
        document.getElementById("nombreReserva").value = "";
        document.getElementById("apellidoReserva").value = "";
        document.getElementById("telefonoReserva").value = "";
        document.getElementById("fechaReserva").value = "";
        document.getElementById("nombreresReserva").value = "";
        document.getElementById("diasReserva").value = "";
        document.getElementById("validezReserva").value = "";
        enviarID();
        });
});

$(document).ready( function() { 
        $("#eleccionAdm").click( function() {
        document.getElementById("cuentaA").value  =  document.getElementById("eleccionAdm").value; //rojo    
        //cuentaA
        //enviarID();
        });
});

function enviarID(){
        //alert($("#usuario1").val());
        var vidReserva= $("#idReserva").val();
        var vidLugar= $("#GPSReservas").val();
        var vfuncion= 5;
        $.ajax({
               type: 'POST',
               url: '../procesarEditar',
               data: {  dataidReserva: vidReserva, datafuncion: vfuncion, datalugar: vidLugar
                     },
               success: function(data){ //funcion LISTA!
                    
                    var y = data;
                    var x = y.split('#');
                    if(y==""){
                        document.getElementById("idReserva").style.backgroundColor  = "#E6B0AA"; //rojo 
                    }
                    else{
                        document.getElementById("idReserva").style.backgroundColor  = "#A9DFBF"; //verde
                        document.getElementById("correoReserva").value = x[0];
                        document.getElementById("nombreReserva").value = x[1];
                        document.getElementById("apellidoReserva").value = x[2];
                        document.getElementById("telefonoReserva").value = x[3];
                        document.getElementById("fechaReserva").value = x[4];
                        document.getElementById("nombreresReserva").value = x[5];
                        document.getElementById("diasReserva").value = x[6];
                        if(x[7]=="0"){ document.getElementById("validezReserva").value = "Solicitada/No confirmada"; }
                        if(x[7]=="1"){ document.getElementById("validezReserva").value = "Confirmada"; }
                        if(x[7]=="2"){ document.getElementById("validezReserva").value = "Cancelada"; }
                    }
               }
        });      
}

$(document).on("keyup","#usuarioR",function (e) {
     var usuario_1 = $("#usuarioR").val();
     var vfuncion="3";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion, datausuario: usuario_1},
               /*beforeSend: function () {
               },*/
               success: function(data){ //funcion LISTA!
                     //Si hay consulta entonces no aceptarla
                     if(data=="Ookusuario"){ 
                     document.getElementById("usuarioR").style.backgroundColor  = "#A9DFBF"; //verde
                     }
                     else if(data!="Ookusuario"){
                     document.getElementById("usuarioR").style.backgroundColor = "#E6B0AA"; //rojo
                     }
               }
        });  
});

$(document).on("keyup","#listaHoteles01",function (e) {
     var usuario_1 = $("#listaHoteles01").val();
     var vfuncion="1";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion, datausuario: usuario_1},
               /*beforeSend: function () {
                     
               },*/
               success: function(data){ //funcion LISTA!
                     //Si hay consulta entonces no aceptarla
                     if(data=="Ookusuario"){ 
                     document.getElementById("letreroEst").style.backgroundColor  = "#A9DFBF"; //rojo

                     }
                     else if(data!="Ookusuario"){
                     document.getElementById("letreroEst").style.backgroundColor = "#E6B0AA"; //verde
                     }
               }
        });  
});
 
$(document).on("change","#cuentaA",function (e) {
     var usuario_1 = $("#cuentaA").val();
     var vfuncion="2";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion, datausuario: usuario_1},
               /*beforeSend: function () {
                     
               },*/
               success: function(data){ //funcion LISTA!
                     //Si hay consulta entonces no aceptarla
                     if(data=="Ookusuario"){ 
                     document.getElementById("cuentaA").style.backgroundColor  = "#A9DFBF"; //rojo

                     }
                     else if(data!="Ookusuario"){
                     document.getElementById("cuentaA").style.backgroundColor = "#E6B0AA"; //verde
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

