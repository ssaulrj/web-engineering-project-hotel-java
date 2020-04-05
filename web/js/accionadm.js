

$(document).ready( function() { 
        $("#btnverusuario").click( function() {
            enviarID();
                 //alert('hi');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#btnverreserva").click( function() {
            enviarRes();
                 //alert('hi');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#btnverservicio").click( function() {
            enviarServicio();
                 //alert('hi');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#btnverpaquetes").click( function() {
             enviarPaquetes();
                 //alert('hi');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#btntipohabitacion").click( function() {
             enviarHabitacion();
                 //alert('hi');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#btnverhabitacion").click( function() {
             //ubicacionX = $("#GPSadm").val();
             setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorHabitacion.jsp";},1);
        });
});

$(document).ready( function() { 
        $("#cancelarReserva").click( function() {
             cancelarReservax();
                alert('Procesando cancelacion de reserva');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#confirmarReserva").click( function() {
             confirmarReservax();
                 alert('Procesando confirmacion de reserva');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#actualizarServicio").click( function() {
             actualizarServiciox();
                 alert('Procesando actualización de servicio');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#actualizarPaquete").click( function() {
             actualizarPaquetex();
                 alert('Procesando actualización de paquete');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#asignarhab").click( function() {
             asignarhabx();
                 alert('Procesando Asignacion de habitacion');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

$(document).ready( function() { 
        $("#desocuparhab").click( function() {
             desocuparhabx();
                 alert('Procesando Desocupar habitacion');
                 //document.getElementById("GPSadm").value = "Hola";
        });
});

function enviarID(){
        var vidLugar= $("#GPSadm").val();
        
        $.ajax({
               type: 'POST',
               url: '../ProcesarUsuarios',
               data: { datalugar: vidLugar
                     },
               success: function(data){ //funcion LISTA!
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorUsuarios.jsp";},1);
               }
        });      
}

function enviarRes(){
        var vidLugar= $("#GPSadm").val();
        
        $.ajax({
               type: 'POST',
               url: '../ProcesarReserva',
               data: { datalugar: vidLugar
                     },
               success: function(data){ //funcion LISTA!
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorReserva.jsp";},1);
               }
        });      
}

function enviarServicio(){
        var vidLugar= $("#GPSadm").val();
       
        $.ajax({
               type: 'POST',
               url: '../ProcesarServicio',
               data: { datalugar: vidLugar
                     },
               success: function(data){ //funcion LISTA!
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorServicio.jsp";},1);
               }
        });      
}

function enviarPaquetes(){
        var vidLugar= $("#GPSadm").val();
        
        $.ajax({
               type: 'POST',
               url: '../ProcesarPaquetes',
               data: { datalugar: vidLugar
                     },
               success: function(data){ //funcion LISTA!
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorPaquetes.jsp";},1);
               }
        });      
}

function enviarHabitacion(){
        var vidLugar= $("#GPShabx").val();
        var vartip= $("#tiphabicacion").val();
        
        $.ajax({
               type: 'POST',
               url: '../ProcesarHabitacion',
               data: { datalugar: vidLugar, datatipo: vartip
                     },
               success: function(data){ //funcion LISTA!
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorHabitacion.jsp";},1);
               }
        });      
}


function cancelarReservax(){
        var varfuncion= "7";
        var varlugar = "";
        var varid =  parseInt($("#idReserva").val());
        //alert(varid);
        if ($("#idReserva").val() >= 1000000 && $("#idReserva").val() <2000000){varlugar="CANCUN"}
        else if ($("#idReserva").val() >= 2000000 && $("#idReserva").val() <3000000){varlugar="CDMX"}
        else if ($("#idReserva").val() >= 3000000 && $("#idReserva").val() <4000000){varlugar="CSL"}
        else if ($("#idReserva").val() >= 4000000 && $("#idReserva").val() <5000000){varlugar="MERIDA"}
        else if ($("#idReserva").val() >= 5000000 && $("#idReserva").val() <6000000){varlugar="OAXACA"}
        else if ($("#idReserva").val() >= 6000000 && $("#idReserva").val() <7000000){varlugar="SLP"}
        
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { dataGPS: varlugar, datafuncion: varfuncion, dataid: varid
                     },
               success: function(data){ //funcion LISTA!
                    var txt= "";
                    var datoo = data;
                    var txt= datoo;
                    alert("Reserva del ID, "+txt);
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/indexSesionAdministrador.jsp";},1);
               }
        });      
}

function confirmarReservax(){
        var varfuncion= "6";
        var varlugar = "";
        var varid =  parseInt($("#idReserva").val());
        
        if ($("#idReserva").val() >= 1000000 && $("#idReserva").val() <2000000){varlugar="CANCUN"}
        else if ($("#idReserva").val() >= 2000000 && $("#idReserva").val() <3000000){varlugar="CDMX"}
        else if ($("#idReserva").val() >= 3000000 && $("#idReserva").val() <4000000){varlugar="CSL"}
        else if ($("#idReserva").val() >= 4000000 && $("#idReserva").val() <5000000){varlugar="MERIDA"}
        else if ($("#idReserva").val() >= 5000000 && $("#idReserva").val() <6000000){varlugar="OAXACA"}
        else if ($("#idReserva").val() >= 6000000 && $("#idReserva").val() <7000000){varlugar="SLP"}
        
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { dataGPS: varlugar, datafuncion: varfuncion, dataid: varid
                     },
               success: function(data){ //funcion LISTA!
                    var txt= "";
                    var datoo = data;
                    var txt= datoo;
                    alert("Reserva del ID, "+txt);
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/indexSesionAdministrador.jsp";},1);
               }
        });      
}

function actualizarServiciox(){
        var varfuncion= "5";
        var varlugar = $("#lugarServicios").val();
        var varprecio = $("#precioServicios").val(); 
        var varservicio = $("#tipoServicios").val();; ;
        
        
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { dataGPS: varlugar, datafuncion: varfuncion, dataprecio: varprecio, dataservicio: varservicio
                     },
               success: function(data){ //funcion LISTA!
                    var txt= "";
                    var datoo = data;
                    var txt= datoo;
                    alert("Servicio, "+txt);
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/indexSesionAdministrador.jsp";},1);
               }
        });      
}

function actualizarPaquetex(){
        var varfuncion= "4";
        var varlugar = $("#lugarPaquete").val();
        var varprecio = $("#precioPaquete").val(); 
        var vartipo= $("#tipoPaquete").val();; ;
        
        
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { dataGPS: varlugar, datafuncion: varfuncion, dataprecio: varprecio, datatipo: vartipo
                     },
               success: function(data){ //funcion LISTA!
                    var txt= "";
                    var datoo = data;
                    var txt= datoo;
                    alert("Paquete, "+txt);
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/indexSesionAdministrador.jsp";},1);
               }
        });      
}

function asignarhabx(){
        var varfuncion= "3";
        var vidLugar= $("#GPShabx3").val();
        var varidhab = $("#idhab").val(); 
        var varnumhab= $("#numhab").val();; ;
        
        
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { dataGPS2: vidLugar, datafuncion: varfuncion, dataidhab: varidhab, datanumhab: varnumhab
                     },
               success: function(data){ //funcion LISTA!
                    var txt= "";
                    var datoo = data;
                    var txt= datoo;
                    alert("Asignacion, "+txt);
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorHabitacion.jsp";},1);
               }
        });      
}

function desocuparhabx(){
        var varfuncion= "2";
        var varlugar = $("#GPShabx3").val(); 
        var varnumhab= $("#numhabdes").val();; ;
        
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { dataGPS3: varlugar, datafuncion: varfuncion, datanumhabdes: varnumhab
                     },
               success: function(data){ //funcion LISTA!
                    var txt= "";
                    var datoo = data;
                    var txt= datoo;
                    alert("Asignacion, "+txt);
                    setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorHabitacion.jsp";},1);
               }
        });      
}

// http://10.104.97.130:8080/hotelSPA/jsp/mostradorHabitacion.jsp