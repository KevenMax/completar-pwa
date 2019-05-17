class PessoasController < ApplicationController
  def index
  end

  def cadastro_final
    if !session[:pessoa].blank?
      flash[:notice] = 'Você já completou seu cadastro!'
      redirect_to pessoas_perfil_path
    else
    	@cursos = Curso.where(ativo: true).order(:nome)
      render layout: 'empty'
    end
  end

  def cadastrar
    @cursos = Curso.where(ativo: true).order(:nome)

  	@pessoa = Pessoa.new
  	@pessoa.nome = params[:nome]
  	@pessoa.apelido = params[:apelido]
  	@pessoa.matricula = params[:matricula]
  	@pessoa.curso_id = params[:curso]
    @pessoa.campu_id = Curso.find(params[:curso]).campu.id
  	@pessoa.contato = params[:contato]
  	@pessoa.usuario_id = current_usuario.id
  	@pessoa.foto = params[:foto]
  
  	if @pessoa.save
      session[:pessoa] = @pessoa.id
      redirect_to dashboards_index_path
    else
      flash[:notice] = 'Número de matricula já existente'
      redirect_to pessoas_cadastro_final_path
    end
  
  end

  def perfil
    @pessoa = Pessoa.find(session[:pessoa])
    @horas_realizadas = @pessoa.horas_complementares.where(ativo: true).sum('quantidade_horas')
    @horas_totais = @pessoa.curso.carga_atividades_complementares
  end

  def editar_perfil
  end

  def editar
    pessoa = Pessoa.find(session[:pessoa])
    pessoa.update(nome: params[:nome], apelido: params[:apelido], matricula: params[:matricula], curso_id: params[:curso], campu_id: Curso.find(params[:curso]).campu_id, contato: params[:contato])
    flash[:notice] = 'Perfil atualizado com sucesso!'
    redirect_to pessoas_perfil_path
  end
end
