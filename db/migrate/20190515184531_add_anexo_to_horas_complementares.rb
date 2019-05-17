class AddAnexoToHorasComplementares < ActiveRecord::Migration[5.2]
  def change
    add_column :horas_complementares, :anexo, :string
  end
end
