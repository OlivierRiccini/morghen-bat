class RemoveCountryFromCompanyDetail < ActiveRecord::Migration[5.1]
  def change
    remove_column :company_details, :country, :string
  end
end
