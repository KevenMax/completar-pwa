class Curso < ApplicationRecord
  belongs_to :campu
  has_many :categorias
end
