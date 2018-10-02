class AddTitleToCompanyValues < ActiveRecord::Migration[5.1]
  def change
    add_column :company_values, :title, :string
  end
end
