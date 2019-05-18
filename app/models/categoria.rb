class Categoria < ApplicationRecord
  belongs_to :curso

  	def self.percentual_horas_realizadas(horas_realizadas, total_horas)
	  	percentual = 0
	  	if !total_horas.blank? && total_horas > 0
			percentual = (horas_realizadas/total_horas)*100
		end
		return percentual
	end
end
