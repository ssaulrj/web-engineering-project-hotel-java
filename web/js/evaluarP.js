
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready( function() { 
        $("#botoncargar").click( function() {
        enviarRegistroP();
        });
});


$(document).ready(function() {
  // Escuchamos el evento 'change' del input donde cargamos el archivo
  $(document).on("change", "input[type=file]", function(e) {
    // Obtenemos la ruta temporal mediante el evento
    var TmpPath = URL.createObjectURL(e.target.files[0]);
    // Mostramos la ruta temporal
    //document.getElementById("real-file").files[0].name
    document.getElementById("rutaP").value = "fotos/"+document.getElementById("real-file").files[0].name;;
    $("span").html(TmpPath);
    $("img").attr('src', TmpPath);
  });
});

$(document).on("change","#idE", function() {
     var vdataidE = $("#idE").val();
       
     //document.getElementById("nombrePE").value = "hola";
      $.ajax({
               type: 'POST',
               url: '../procesarEditarP',
               data: {  dataidE: vdataidE },
               /*beforeSend: function () {
                     
               },*/
               success: function(data){ //funcion LISTA!
                     //alert(data);
                     var stringx = data;
                     var color = stringx.split('-')[0]; // 1er
                     var costo = stringx.split('-')[1]; // 1er
                     var stock = stringx.split('-')[2]; // 1er
                     var desc =  stringx.split('-')[3]; // 1er
                     var ruta =  stringx.split('-')[4]; // 1er
                     
                     document.getElementById("nombrePE").value= color;
                     document.getElementById("precioPE").value= costo;
                     document.getElementById("stockPE").value= stock;
                     document.getElementById("desPE").value= desc;
                     document.getElementById("rutaPE").value= ruta;
                     
               }
        });   
}); 

//AGREGAR PPRODUCTO
function enviarRegistroP(){
        //alert($("#usuario1").val());
        var vdatanombreP= $("#nombreP").val();
        var vdataprecioP = $("#precioP").val();
        var vdatastockP = $("#stockP").val();
        var vdatadesP= $("#desP").val();
        var vdatarutaP= $("#rutaP").val();
        
        var vfuncion="7";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion,       datanombreP:vdatanombreP,  dataprecioP:vdataprecioP,
                       datastockP:vdatastockP,
                       datadesP:vdatadesP,   datarutaP:vdatarutaP
                       
                     },
               beforeSend: function (data) {
                     if(vdatanombreP==""){document.getElementById("nombreP").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("nombreP").style.backgroundColor = "white";}
                     
                     if(vdataprecioP==""){document.getElementById("precioP").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("precioP").style.backgroundColor = "white";}
                     
                     if(vdatastockP==""){document.getElementById("stockP").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("stockP").style.backgroundColor = "white";}
                     
                     if(vdatadesP==""){document.getElementById("desP").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("desP").style.backgroundColor = "white";}
                     
                     if(vdatarutaP==""){document.getElementById("rutaP").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("rutaP").style.backgroundColor = "white";}
                     
               },   
               success: function(data){ 
                    if(data=="OokregisP"){ 
                        
                        miven= window.open("http://localhost:8080/peluche2semi/html/Mensajeexitoso.html","nombrePop","width=450, height=150,left=400,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                        setTimeout( function(){miven.close()}  ,3000);
                        setTimeout( function(){window.location.href="http://localhost:8080/peluche2semi/html/indexSesionAdministrador.html";}  ,3000);
                        
                     }
                    else if(data!="OokregisP"){
                     //alert("Algo salió mal :( ");
                        
                       miven= window.open("http://localhost:8080/peluche2semi/html/Mensaje.html","nombrePop","width=350, height=150,left=500,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                       setTimeout( function(){miven.close()}  ,3000);
                      
                    }
               }
        });      
}