function alertComplete(notice){
	setTimeout(function() {
      toastr.options = {
        closeButton: true,
        progressBar: true,
        showMethod: 'slideDown',
        timeOut: 4000
      };
        toastr.info(notice, '');
    }, 000);
}

function loadAtividadeCategoria(div, valor, classe_atividade){
	if(valor != ''){
		$.ajax({
			method: 'GET',
			data: { categoria_id: valor},
			url: '/horas_complementares/carregar_atividades_categoria'
		})
		.done(function(retorno){
			$("#" + div).html(retorno);
		});
	}
}