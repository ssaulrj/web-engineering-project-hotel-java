

$(document).ready( function() {
    document.getElementById("dato1").style.color = "black";
    document.getElementById("dato2").style.color = "black";
    document.getElementById("dato3").style.color = "black";
    document.getElementById("dato4").style.color = "black";
    document.getElementById("dato5").style.color = "black";
    document.getElementById("dato6").style.color = "black";
    document.getElementById("dato7").style.color = "black";
    document.getElementById("tiporr").style.color = "black";
    
    
});

$(document).ready( function() {
    $("#miBusqueda tbody tr").click(function(){
        var tabledata = $(this).children("td").map(function(){
           return $(this).text();     
        }).get();
        var td = tabledata[0];
        document.getElementById("dato1").value =tabledata[0];
        document.getElementById("dato2").value =tabledata[1];
        document.getElementById("dato3").value =tabledata[2];
        document.getElementById("dato4").value =tabledata[3];
        document.getElementById("dato5").value =tabledata[4];
        document.getElementById("dato6").value =tabledata[5];
        document.getElementById("dato7").value =tabledata[6];
                         
        setTimeout( function(){window.location.href="http://10.104.97.130:8080/hotelSPA/jsp/mostradorRes.jsp#twoform";},1);
        
    }); 
});

$(document).ready( function() {
    $("#miReserva tbody tr").click(function(){
        var tabledata = $(this).children("td").map(function(){
           return $(this).text();     
        }).get();
        var td = tabledata[0];
        document.getElementById("idReserva").value =tabledata[0];
                         
        //setTimeout( function(){window.location.href="http://192.168.0.8:8080/hotelSPA/jsp/mostradorRes.jsp#twoform";},1);
        
    }); 
});

$(document).ready( function() {
    $("#miServicio tbody tr").click(function(){
        var tabledata = $(this).children("td").map(function(){
           return $(this).text();     
        }).get();
        var td = tabledata[0];
        document.getElementById("tipoServicios").value =tabledata[1];
                         
        //setTimeout( function(){window.location.href="http://192.168.0.8:8080/hotelSPA/jsp/mostradorRes.jsp#twoform";},1);
        
    }); 
});

$(document).ready( function() {
    $("#miPaquete tbody tr").click(function(){
        var tabledata = $(this).children("td").map(function(){
           return $(this).text();     
        }).get();
        var td = tabledata[0];
        document.getElementById("tipoPaquete").value =tabledata[1];
                         
        //setTimeout( function(){window.location.href="http://192.168.0.8:8080/hotelSPA/jsp/mostradorRes.jsp#twoform";},1);
        
    }); 
});

$(document).ready( function() {
    $("#miHabitacion tbody tr").click(function(){
        var tabledata = $(this).children("td").map(function(){
           return $(this).text();     
        }).get();
        var td = tabledata[0];
        document.getElementById("numhab").value =tabledata[0];
        document.getElementById("numhabdes").value =tabledata[0];
        
                         
        //setTimeout( function(){window.location.href="http://192.168.0.8:8080/hotelSPA/jsp/mostradorRes.jsp#twoform";},1);
        
    }); 
});