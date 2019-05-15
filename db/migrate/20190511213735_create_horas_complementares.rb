class CreateHorasComplementares < ActiveRecord::Migration[5.2]
  def change
    create_table :horas_complementares do |t|
      t.references :categoria, foreign_key: true
      t.references :atividade, foreign_key: true
      t.string :descricao
      t.float :quantidade_horas
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
