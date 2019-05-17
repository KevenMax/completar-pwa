class HorasComplementar < ApplicationRecord
  belongs_to :categoria
  belongs_to :atividade

  mount_uploader :anexo, AnexoUploader


  def self.categoria_horas_realizadas_limite(pessoa_id)
  	pessoa = Pessoa.find(pessoa_id)
  	categorias = pessoa.curso.categorias.where(ativo: true).order(:nome)
  	categorias_horas = Array.new

  	categorias.each do |categoria|
  		categorias_horas.push([categoria.id, categoria.nome, categoria.limite_carga_horaria, quantidade_horas_realizadas_categoria(pessoa.id, categoria.id)])
  	end

  	return categorias_horas
  end

  def self.quantidade_horas_realizadas_categoria(pessoa_id, categoria_id)
  	horas_complementares = self.where(ativo: true, pessoa_id: pessoa_id, categoria_id: categoria_id).sum('quantidade_horas')
  	
  	return horas_complementares
  end
end
