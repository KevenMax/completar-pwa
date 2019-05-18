class HorasComplementar < ApplicationRecord
  belongs_to :categoria
  belongs_to :atividade

  mount_uploader :anexo, AnexoUploader


  def self.categorias_horas_realizadas_limite(pessoa_id)
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

  def self.categoria_horas_realizadas_limite(pessoa_id, categoria_id)
    categoria_horas = Array.new
    categoria = Categoria.find(categoria_id)
    categoria_horas.push([categoria.id, categoria.nome, categoria.limite_carga_horaria, quantidade_horas_realizadas_categoria(pessoa_id, categoria.id)])
    return categoria_horas
  end

  def self.percentual_horas_realizadas(horas_realizadas, total_horas)
    percentual = 0
    if !total_horas.blank? && total_horas > 0
      percentual = (horas_realizadas/total_horas)*100
    end
    return percentual
  end

  def self.caminho_anexo(hora_complementar)
    hora_complementar = HorasComplementar.find(hora_complementar)
    if hora_complementar.anexo.file.exists?
      caminho = File.join(Rails.root, 'public', hora_complementar.anexo.url)
      return caminho
    else
      return nil
    end
  end

  def self.validar_horas_realizadas_categoria(quantidade_horas, categoria, pessoa)
    categoria = Categoria.find(categoria)
    horas_realizadas = HorasComplementar.where(ativo: true, pessoa_id: pessoa, categoria_id: categoria).sum('quantidade_horas')
    if horas_realizadas + quantidade_horas <= categoria.limite_carga_horaria
      return true
    else
      return false
    end
  end
end
