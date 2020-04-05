
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*$(document).ready(function() {
    $("#1").click(function(){
       
        
        $("#tableC").append('<tr><td><input type="text" name="parametros[] "/></td><td> <input type="text" name="unidad[]"/></td><td> <input type="text" name="especificacion[]"/></td><td> <input type="text" name="resultado[]"/></td><td> <a href="#" class="delete">Eliminar</a></td></tr>');
        $('.delete').off().click(function(e) {
            $(this).parent('td').parent('tr').remove();
        });
    });
});*/

 $(document).ready(function() {
                        $("#ok").click(function() {
                          var valores = "";

                                  $(".numero").parent("tr").find("td").each(function() {
                                          if($(this).html() != "coger valores de la fila"){
                                   valores += $(this).html() + " ";
                                   }
                                    });

                          valores = valores + "\n";
                          alert(valores);
                        });
                  });
                  

$(document).ready( function() { 
        $("#botoncargarE").click( function() {
        enviarRegistroPE();
        });
});


$(document).ready(function() {
  // Escuchamos el evento 'change' del input donde cargamos el archivo
  $(document).on("change", "input[type=file]", function(e) {
    // Obtenemos la ruta temporal mediante el evento
    var TmpPath = URL.createObjectURL(e.target.files[0]);
    // Mostramos la ruta temporal
    //document.getElementById("real-file").files[0].name
    document.getElementById("rutaPE").value = "fotos/"+document.getElementById("real-fileE").files[0].name;;
    $("span").html(TmpPath);
    $("img").attr('src', TmpPath);
  });
});

$(document).on("change","#idPE", function() {
     var vdataidE = $("#idPE").val();
       
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
function enviarRegistroPE(){
        //alert($("#usuario1").val());
        var vdataidPE= $("#idPE").val();
        var vdatanombrePE= $("#nombrePE").val();
        var vdataprecioPE = $("#precioPE").val();
        var vdatastockPE = $("#stockPE").val();
        var vdatadesPE= $("#desPE").val();
        var vdatarutaPE= $("#rutaPE").val();
        
        var vfuncion="8";
        $.ajax({
               type: 'POST',
               url: '../procesar',
               data: { datafuncion:vfuncion,       datanombrePE:vdatanombrePE,  dataprecioPE:vdataprecioPE,
                       datastockPE:vdatastockPE, dataidPE:vdataidPE,
                       datadesPE:vdatadesPE,   datarutaPE:vdatarutaPE
                       
                     },
               beforeSend: function (data) {
                     if(vdatanombrePE==""){document.getElementById("nombrePE").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("nombrePE").style.backgroundColor = "white";}
                     
                     if(vdataprecioPE==""){document.getElementById("precioPE").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("precioPE").style.backgroundColor = "white";}
                     
                     if(vdatastockPE==""){document.getElementById("stockPE").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("stockPE").style.backgroundColor = "white";}
                     
                     if(vdatadesPE==""){document.getElementById("desPE").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("desPE").style.backgroundColor = "white";}
                     
                     if(vdatarutaPE==""){document.getElementById("rutaPE").style.backgroundColor = "#FCF3CF";}
                     else{document.getElementById("rutaPE").style.backgroundColor = "white";}
                     
               },   
               success: function(data){ 
                    if(data=="OokregisPE"){ 
                        
                        miven= window.open("http://localhost:8080/peluche2semi/html/Mensajeexitoso.html","nombrePop","width=450, height=150,left=400,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                        setTimeout( function(){miven.close()}  ,3000);
                        setTimeout( function(){window.location.href="http://localhost:8080/peluche2semi/html/indexSesionAdministrador.html";}  ,3000);
                        
                     }
                    else if(data!="OokregisPE"){
                     //alert("Algo salió mal :( ");
                        
                       miven= window.open("http://localhost:8080/peluche2semi/html/Mensaje.html","nombrePop","width=350, height=150,left=500,top=300,scrollbars=NO,resizable=NO,Location=NO,status=NO,Menubar=NO,DEPENDENT=NO,HOTKEYS=NO" );
                       setTimeout( function(){miven.close()}  ,3000);
                      
                    }
               }
        });      
}