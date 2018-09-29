class AddTypeDeTravauxToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :type_de_travaux, :string
  end
end
