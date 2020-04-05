
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).on("keyup","#listaHoteles01",function (e) {
     //document.getElementById("letreroEst").value="Hola!!";
     var vusuario_1 = $("#listaHoteles01").val();
     var vfuncion="0";
        $.ajax({
               type: 'POST',
               url: '../procesarEstado',
               data: { datafuncion:vfuncion, datausuario: vusuario_1},
               /*beforeSend: function () {
                     
               },*/
               success: function(data){ //funcion LISTA!
                     //Si hay consulta entonces no aceptarla
                     if(data=="Ookusuario"){ 
                     //document.getElementById("letreroEst").style.backgroundColor  = "#E6B0AA"; //rojo
                     //document.getElementById("letreroEst").state  = enabled; //rojo
                        document.getElementById("letreroEst").value="Conexion lista!!";
                     }
                     else if(data!="Ookusuario"){
                        document.getElementById("letreroEst").value="Conexion NO!!";
                     }
               }
        });  
});
 