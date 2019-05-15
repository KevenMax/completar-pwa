class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :apelido
      t.integer :matricula
      t.references :campu, foreign_key: true
      t.references :curso, foreign_key: true
      t.string :contato
      t.boolean :administrador, default: false
      t.references :usuario, foreign_key: true
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
