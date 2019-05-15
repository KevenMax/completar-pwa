class AddFotoToPessoas < ActiveRecord::Migration[5.2]
  def change
    add_column :pessoas, :foto, :string
  end
end
