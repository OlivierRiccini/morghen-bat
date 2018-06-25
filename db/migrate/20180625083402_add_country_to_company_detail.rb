class AddCountryToCompanyDetail < ActiveRecord::Migration[5.1]
  def change
    add_column :company_details, :country, :string, default: "france"
  end
end
