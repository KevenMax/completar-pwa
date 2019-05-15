class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.string :descricao
      t.string :email_contato_coordenacao
      t.string :numero_contato_coordenacao
      t.float :carga_atividades_complementares
      t.references :campu, foreign_key: true
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
