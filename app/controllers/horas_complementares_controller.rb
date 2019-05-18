class HorasComplementaresController < ApplicationController
  def index
   	@horas_complementar = HorasComplementar.new
   	@categorias = Categoria.where(ativo: true).order(:nome)
    @atividades = Atividade.where(ativo: true).order(:nome)
  end

  def show
  end

  def create
    categoria = Categoria.find(params[:horas_complementar][:categoria_id])

  	@categorias = Categoria.where(ativo: true).order(:nome)
    @atividades = Atividade.where(ativo: true, categoria_id: categoria.id).order(:nome)

  	@horas_complementar = HorasComplementar.new
  	@horas_complementar.categoria_id = params[:horas_complementar][:categoria_id]
  	@horas_complementar.atividade_id = (params[:horas_complementar][:atividade_id].blank?) ? params[:atividade_id] : params[:horas_complementar][:atividade_id]
  	@horas_complementar.descricao = params[:horas_complementar][:descricao]
  	@horas_complementar.quantidade_horas = params[:horas_complementar][:quantidade_horas].gsub(',','.').to_f
    @horas_complementar.pessoa_id = Pessoa.find(session[:pessoa]).id
    @horas_complementar.anexo = params[:horas_complementar][:anexo]

    verificacao_horas = HorasComplementar.validar_horas_realizadas_categoria(@horas_complementar.quantidade_horas, @horas_complementar.categoria_id, session[:pessoa])

    if verificacao_horas

    	if @horas_complementar.save
    		flash[:notice] = 'Atividade Complementar cadastrada com Sucesso!'
    		redirect_to dashboards_index_path
    	else
        raise @horas_complementar.errors.inspect
    		flash[:notice] = 'Ocorreu algum problema ao realizar o cadastro, tente novamente.'
    		render 'index'
    	end

    else
      @horas_complementar.quantidade_horas = nil
      flash[:notice] = "Quantidade de Horas ultrapassa o Limite da Categoria (#{categoria.limite_carga_horaria.to_s.gsub('.',',')}h)"
      render 'index'
    end
  end

  def update
  end

  def carregar_atividades_categoria
  	@atividades_categoria = Atividade.where(ativo: true, categoria_id: params[:categoria_id])
  	render :inline => render_to_string(:partial => 'atividades_categoria')
  end
end
