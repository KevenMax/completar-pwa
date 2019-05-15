class CreateCampus < ActiveRecord::Migration[5.2]
  def change
    create_table :campus do |t|
      t.string :nome
      t.string :cep
      t.string :cidade
      t.string :estado
      t.string :endereco
      t.string :contato
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
