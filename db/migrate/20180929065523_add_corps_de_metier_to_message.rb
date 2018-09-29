class AddCorpsDeMetierToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :corps_de_metier, :string
  end
end
