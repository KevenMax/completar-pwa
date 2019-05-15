class DashboardsController < ApplicationController
	def index
		pessoa = Pessoa.find(session[:pessoa])
		total_horas = pessoa.curso.carga_atividades_complementares 
		total_realizadas = HorasComplementar.where(pessoa_id: pessoa.id, ativo: true).sum('quantidade_horas')

		@percentual_horas_complementares = 0
		if !total_horas.blank? && total_horas > 0
			@percentual_horas_complementares = (total_realizadas/total_horas)*100
		end

		@categorias_horas_realizadas_limite = HorasComplementar.categoria_horas_realizadas_limite(pessoa.id)
		
	end
end
