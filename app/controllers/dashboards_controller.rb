class DashboardsController < ApplicationController
	def index
		pessoa = Pessoa.find(session[:pessoa])
		total_horas = pessoa.curso.carga_atividades_complementares 
		total_realizadas = HorasComplementar.where(pessoa_id: pessoa.id, ativo: true).sum('quantidade_horas')

		# Percentual de Horas Realizadas
		@percentual_horas_complementares = HorasComplementar.percentual_horas_realizadas(total_realizadas, total_horas)

		# Informações das Categorias [Id, Categoria, Quantidade de Horas Totais, Quantidade de Horas Realizadas]
		@categorias_horas_realizadas_limite = HorasComplementar.categorias_horas_realizadas_limite(pessoa.id)
	end

	def categoria
		@categoria = Categoria.find(params[:categoria])

		# Informações da Categoria [Id, Categoria, Quantidade de Horas Totais, Quantidade de Horas Realizadas]
		@categoria_horas_realizadas_limite = HorasComplementar.categoria_horas_realizadas_limite(session[:pessoa], @categoria.id)

		# Percentual de Horas Realizadas na Categoria
		@percentual_categoria = Categoria.percentual_horas_realizadas(@categoria_horas_realizadas_limite[0][3], @categoria_horas_realizadas_limite[0][2])
		
		@horas_complementares = HorasComplementar.where(ativo: true, pessoa_id: session[:pessoa], categoria_id: @categoria.id).order(:created_at)
	end

	def download_anexo
		begin 
			anexo = HorasComplementar.caminho_anexo(params[:hora_complementar])
			send_file(anexo)
		rescue
			flash[:notice] = 'Poxa... Ocorreu algum problema com seu anexo, entre em contato com o suporte.'
			redirect_to dashboards_index_path
		end
	end

	def deletar_hora_complementar
		hora_complementar = HorasComplementar.find(params[:hora_complementar])
		hora_complementar.update(ativo: false)

		redirect_to dashboards_categoria_path(categoria: params[:categoria])
	end
end
