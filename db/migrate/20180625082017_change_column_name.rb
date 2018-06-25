class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :company_details, :company_country, :country
  end
end
