class AddColumnNumeroToCategoria < ActiveRecord::Migration[5.2]
  def change
    add_column :categorias, :numero, :int
  end
end
