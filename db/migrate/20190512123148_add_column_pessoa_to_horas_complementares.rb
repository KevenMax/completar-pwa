class AddColumnPessoaToHorasComplementares < ActiveRecord::Migration[5.2]
  def change
    add_reference :horas_complementares, :pessoa, foreign_key: true
  end
end
