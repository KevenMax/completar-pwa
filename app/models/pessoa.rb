class Pessoa < ApplicationRecord
  belongs_to :campu
  belongs_to :curso
  belongs_to :usuario
  validates_uniqueness_of :matricula, conditions: -> { where(ativo: true) }

  mount_uploader :foto, FotoUploader

end
