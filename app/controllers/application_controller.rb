class ApplicationController < ActionController::Base
	before_action :authenticate_usuario!


	protected	

	def after_sign_in_path_for(resource)
		pessoa = Pessoa.where(usuario_id: current_usuario.id, ativo: true).first

		if !pessoa.blank?
			session[:pessoa] = pessoa.id
			
			if pessoa.administrador
				categoria_index_path
			else
				dashboards_index_path
			end
		else
			flash[:notice] = 'Quase lá, finalize seu cadastro!'
			pessoas_cadastro_final_path
		end
	end
end
