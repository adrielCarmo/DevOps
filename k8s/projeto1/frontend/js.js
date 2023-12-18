$("#button-blue").on("click", function() {
    
    var txt_nome = $("#name").val();
    var txt_email = $("#email").val();
    var txt_mensagem = $("#mensagem").val();

    $.ajax({
        url: "http://192.168.49.2:31859",
        
        type: "post",
        data: {nome: txt_nome, mensagem: txt_mensagem, email: txt_email},
        beforeSend: function() {
        
            console.log("Tentando enviar os dados....");

        }
    }).done(function(e) {
        alert("Dados Salvos");
    })

});