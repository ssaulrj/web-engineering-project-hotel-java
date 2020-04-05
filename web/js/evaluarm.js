
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready( function() { 
        $("#botonRegistroE").click( function() {
        enviarRegistroE();
        });
});

$(document).ready( function() { 
        $("#botonRegistroA").click( function() {
        enviarRegistroA();
        });
});

$(document).ready( function() { 
        $("#botonRegistroAN").click( function() {
        enviarRegistroAN();
        });
});

$(document).on("keyup","#contrasenaAX", function() {
     var pass_1 = $("#contrasenaAX").val();
     var pass_2 = $("#contrasenaAX2").val();
     
     if(pass_1 == pass_2){
     document.getElementById("contrasenaAX").style.backgroundColor  = "#A9DFBF"; //verde
     document.getElementById("contrasenaAX2").style.backgroundColor = "#A9DFBF";
     }
     else{
     document.getElementById("contrasenaAX").style.backgroundColor  = "#E6B0AA"; //rojo
     document.getElementById("contrasenaAX2").style.backgroundColor = "#E6B0AA";      
     }
}); 

$(document).on("keyup","#contrasenaAX2", function() {
     var pass_1 = $("#contrasenaAX").val();
     var pass_2 = $("#contrasenaAX2").val();
     
     if(pass_1 == pass_2){
     document.getElementById("contrasenaAX").style.backgroundColor  = "#A9DFBF";
     document.getElementById("contrasenaAX2").style.backgroundColor = "#A9DFBF";
     }
     else{
     document.getElementById("contrasenaAX").style.backgroundColor  = "#E6B0AA";
     document.getElementById("contrasenaAX2").style.backgroundColor = "#E6B0AA";      
     }
}); 

//ADMINIS-
$(document).on("keyup","#contrasenaRA", function() {
     var pass_1 = $("#contrasenaRA").val();
     var pass_2 = $("#contrasena2RA").val();
     
     if(pass_1 == pass_2){
     document.getElementById("contrasenaRA").style.backgroundColor  = "#A9DFBF"; //verde
     document.getElementById("contrasena2RA").style.backgroundColor = "#A9DFBF";
     }
     else{
     document.getElementById("contrasenaRA").style.backgroundColor  = "#E6B0AA"; //rojo
     document.getElementById("contrasena2RA").style.backgroundColor = "#E6B0AA";      
     }
}); 

$(document).on("keyup","#contrasena2RA", function() {
     var pass_1 = $("#contrasenaRA").val();
     var pass_2 = $("#contrasena2RA").val();
     
     if(pass_1 == pass_2){
     document.getElementById("contrasenaRA").style.backgroundColor  = "#A9DFBF";
     document.getElementById("contrasena2RA").style.backgroundColor = "#A9DFBF";
     }
     else{
     document.getElementById("contrasenaRA").style.backgroundColor  = "#E6B0AA";
     document.getElementById("contrasena2RA").style.backgroundColor = "#E6B0AA";      
     }
}); 
//ADMINS--

function enviarRegistroE(){
        //alert($("#usuario1").val());
        var vdatanombreE= $("#nombreRE").val();
        var vdataapellidoE = $("#apellidoPRE").val();
        var vdataapellido2E = $("#apellidoMRE").val();
        var vdatausuarioE= $("#usuarioRE").val();
        var vdatacontraE= $("#contrasenaRE").val();
        var vdatacontra2E= $("#contrasena2RE").val();
        var vdatanumberE= $("#numberRE").val();
        var vdataemailE= $("#emailRE").val();
        var vdatacpE= $("#cpRE").val();
        var vdatacalleE= $("#calleRE").val();
        var vdataalcaldiaE= $("#alcaldiaRE").val();
        var vdatanumE= $("#numRE").val();
        var vdataedoE= $("#edoRE").val();
        var vdatacoloniaE= $("#coloniaRE").val();
        
        var vdatantE= $("#ntRE").val();
        var vdatammE= $("#mmRE").val();
        var vdatayyE= $("#yyRE").val();
        var vdatatitularE= $("#titularRE").val();
        var vdatacsE= $("#csRE").val();
        
        var vfuncion="4";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion,       datanombreE:vdatanombreE,  dataapellidoE:vdataapellidoE,
                       dataapellido2E:vdataapellido2E,
                       datausuarioE:vdatausuarioE,   datacontraE:vdatacontraE,  datanumberE:vdatanumberE,  
                       dataemailE:vdataemailE,       datacpE:vdatacpE,          datacalleE:vdatacalleE, 
                       dataalcaldiaE:vdataalcaldiaE, datanumE:vdatanumE,        dataedoE:vdataedoE,
                       datacoloniaE: vdatacoloniaE,
                       
                       datantE:vdatantE, datammE:vdatammE, datayyE:vdatayyE,datatitularE:vdatatitularE,
                       datacsE:vdatacsE        
                     },
               beforeSend: function (data) {
                     if(vdatanombreE==""){document.getElementById("nombreRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("nombreRE").style.backgroundColor = "white";}
                     
                     if(vdataapellidoE==""){document.getElementById("apellidoPRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("apellidoPRE").style.backgroundColor = "white";}
                     
                     if(vdataapellido2E==""){document.getElementById("apellidoMRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("apellidoMRE").style.backgroundColor = "white";}
                     
                     if(vdatausuarioE==""){document.getElementById("usuarioRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("usuarioRE").style.backgroundColor = "white";}
                     
                     if(vdatacontraE==""){document.getElementById("contrasenaRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("contrasenaRE").style.backgroundColor = "white";}
                     
                     if(vdatacontra2E==""){document.getElementById("contrasena2RE").style.backgroundColor = "#FEB1B1";}
                     else {document.getElementById("contrasena2RE").style.backgroundColor = "white";}
                     
                     if(vdatanumberE==""){document.getElementById("numberRE").style.backgroundColor = "#FEB1B1";}
                     else {document.getElementById("numberRE").style.backgroundColor = "white";}
                     
                     if(vdataemailE==""){document.getElementById("emailRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("emailRE").style.backgroundColor = "white";}
                     
                     if(vdatacpE==""){document.getElementById("cpRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("cpRE").style.backgroundColor = "white";}
                     
                     if(vdatacalleE==""){document.getElementById("calleRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("calleRE").style.backgroundColor = "white";}
                     
                     if(vdatacoloniaE==""){document.getElementById("coloniaRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("coloniaRE").style.backgroundColor = "white";}
                     
                     if(vdataalcaldiaE==""){document.getElementById("alcaldiaRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("alcaldiaRE").style.backgroundColor = "white";}
                     
                     if(vdatanumE==""){document.getElementById("numRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("numRE").style.backgroundColor = "white";}
                     
                     if(vdataedoE==""){document.getElementById("edoRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("edoRE").style.backgroundColor = "white";}
                     
                     if(vdatantE==""){document.getElementById("ntRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("ntRE").style.backgroundColor = "white";}
                     
                     if(vdatammE==""){document.getElementById("mmRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("mmRE").style.backgroundColor = "white";}
                     
                     if(vdatayyE==""){document.getElementById("yyRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("yyRE").style.backgroundColor = "white";}
                     
                     if(vdatatitularE==""){document.getElementById("titularRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("titularRE").style.backgroundColor = "white";}
                     
                     if(vdatacsE==""){document.getElementById("csRE").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("csRE").style.backgroundColor = "white";}
               },   
               success: function(data){ 
                    if(data=="OokregisE"){ 
                        
                        miven= window.open("http://localhost:8080/peluche2semi/html/Mensajeexitoso.html","nombrePop","width=450, height=150,left=400,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                        setTimeout( function(){miven.close()}  ,3000);
                        setTimeout( function(){window.location.href="http://localhost:8080/peluche2semi/html/indexSesionInicio.html";}  ,3000);
                        
                     }
                    else if(data!="OokregisE"){
                     //alert("Algo salió mal :( ");
                        
                       miven= window.open("http://localhost:8080/peluche2semi/html/Mensaje.html","nombrePop","width=350, height=150,left=500,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                       setTimeout( function(){miven.close()}  ,3000);
                      
                    }
               }
        });      
}

//ADMINS

function enviarRegistroA(){
        //alert($("#usuario1").val());
        var vdatanombreA= $("#nombreRA").val();
        var vdataapellidoA = $("#apellidoPRA").val();
        var vdataapellido2A = $("#apellidoMRA").val();
        var vdatausuarioA= $("#usuarioRA").val();
        var vdatacontraA= $("#contrasenaRA").val();
        var vdatacontra2A= $("#contrasena2RA").val();
        
        var vfuncion="5";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion,       datanombreA:vdatanombreA,  dataapellidoA:vdataapellidoA,
                       dataapellido2A:vdataapellido2A,
                       datausuarioA:vdatausuarioA,   datacontraA:vdatacontraA,      
                     },
               beforeSend: function (data) {
                     if(vdatanombreA==""){document.getElementById("nombreRA").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("nombreRA").style.backgroundColor = "white";}
                     
                     if(vdataapellidoA==""){document.getElementById("apellidoPRA").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("apellidoPRA").style.backgroundColor = "white";}
                     
                     if(vdataapellido2A==""){document.getElementById("apellidoMRA").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("apellidoMRA").style.backgroundColor = "white";}
                     
                     if(vdatausuarioA==""){document.getElementById("usuarioRA").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("usuarioRA").style.backgroundColor = "white";}
                     
                     if(vdatacontraA==""){document.getElementById("contrasenaRA").style.backgroundColor = "#FEB1B1";}
                     else{document.getElementById("contrasenaRA").style.backgroundColor = "white";}
                     
                     if(vdatacontra2A==""){document.getElementById("contrasena2RA").style.backgroundColor = "#FEB1B1";}
                     else {document.getElementById("contrasena2RA").style.backgroundColor = "white";}
                     
                     
               },   
               success: function(data){ 
                    if(data=="OokregisA"){ 
                        
                        miven= window.open("http://localhost:8080/peluche2semi/html/Mensajeexitoso.html","nombrePop","width=450, height=150,left=400,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                        setTimeout( function(){miven.close()}  ,3000);
                        setTimeout( function(){window.location.href="http://localhost:8080/peluche2semi/html/indexSesionAdministrador.html";}  ,3000);
                        
                     }
                    else if(data!="OokregisA"){
                     //alert("Algo salió mal :( ");
                        
                       miven= window.open("http://localhost:8080/peluche2semi/html/Mensaje.html","nombrePop","width=350, height=150,left=500,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                       setTimeout( function(){miven.close()}  ,3000);
                      
                    }
               }
        });      
}

//AGREGAR ADMIN
function enviarRegistroAN(){
        //alert($("#usuario1").val());
        var vdatanombreAN= $("#nombreRAN").val();
        var vdataapellidoAN = $("#apellidoPRAN").val();
        var vdataapellido2AN = $("#apellidoMRAN").val();
        var vdatausuarioAN= $("#usuarioRAN").val();
        var vdatacontraAN= $("#contrasenaRAN").val();
        var vdatacontra2AN= $("#contrasena2RAN").val();
        
        var vfuncion="6";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion,       datanombreAN:vdatanombreAN,  dataapellidoAN:vdataapellidoAN,
                       dataapellido2AN:vdataapellido2AN,
                       datausuarioAN:vdatausuarioAN,   datacontraAN:vdatacontraAN
                       
                     },
               beforeSend: function (data) {
                     if(vdatanombreAN==""){document.getElementById("nombreRAN").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("nombreRAN").style.backgroundColor = "white";}
                     
                     if(vdataapellidoAN==""){document.getElementById("apellidoPRAN").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("apellidoPRAN").style.backgroundColor = "white";}
                     
                     if(vdataapellido2AN==""){document.getElementById("apellidoMRAN").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("apellidoMRAN").style.backgroundColor = "white";}
                     
                     if(vdatausuarioAN==""){document.getElementById("usuarioRAN").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("usuarioRAN").style.backgroundColor = "white";}
                     
                     if(vdatacontraAN==""){document.getElementById("contrasenaRAN").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("contrasenaRAN").style.backgroundColor = "white";}
                     
                     if(vdatacontra2AN==""){document.getElementById("contrasena2RAN").style.backgroundColor = "#FCF3CF";}
                     else {document.getElementById("contrasena2RAN").style.backgroundColor = "white";}
                     
               },   
               success: function(data){ 
                    if(data=="OokregisAN"){ 
                        
                        miven= window.open("http://localhost:8080/peluche2semi/html/Mensajeexitoso.html","nombrePop","width=450, height=150,left=400,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                        setTimeout( function(){miven.close()}  ,3000);
                        setTimeout( function(){window.location.href="http://localhost:8080/peluche2semi/html/indexSesionAdministrador.html";}  ,3000);
                        
                     }
                    else if(data!="OokregisAN"){
                     //alert("Algo salió mal :( ");
                        
                       miven= window.open("http://localhost:8080/peluche2semi/html/Mensaje.html","nombrePop","width=350, height=150,left=500,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                       setTimeout( function(){miven.close()}  ,3000);
                      
                    }
               }
        });      
}