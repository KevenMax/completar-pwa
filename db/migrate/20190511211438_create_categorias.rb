class CreateCategorias < ActiveRecord::Migration[5.2]
  def change
    create_table :categorias do |t|
      t.string :nome
      t.float :limite_carga_horaria
      t.references :curso, foreign_key: true
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
